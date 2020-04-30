package email.tianlangstudio.aliyun.com.common.conf;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.autoconfigure.orm.jpa.JpaProperties;
import org.springframework.boot.orm.jpa.EntityManagerFactoryBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.PlatformTransactionManager;

import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;

/**
 * write数据源配置
 *
 * @author lengchuan <lishuijun1992@gmail.com>
 * @date 17-4-13
 */
@Configuration
@EnableJpaRepositories(value = "email.tianlangstudio.aliyun.com.email.analysis",
        entityManagerFactoryRef = "masterEntityManagerFactory",
        transactionManagerRef = "masterTransactionManager")
public class MasterDataSourceConfig {

    @Autowired
    JpaProperties jpaProperties;

    @Autowired
    @Qualifier("masterDataSource")
    private DataSource masterDataSource;

//    /**
//     * 我们通过LocalContainerEntityManagerFactoryBean来获取EntityManagerFactory实例
//     * @return
//     */
//    @Bean(name = "masterEntityManagerFactoryBean")
//    @Primary
//    public LocalContainerEntityManagerFactoryBean masterEntityManagerFactoryBean(EntityManagerFactoryBuilder builder) {
//        return builder
//                .dataSource(masterDruidDataSource)
//                .properties(jpaProperties.getProperties())
//                .packages("email.tianlangstudio.aliyun.com.email.analysis") //设置实体类所在位置
//                .persistenceUnit("writePersistenceUnit")
//                .build();
//        //.getObject();//不要在这里直接获取EntityManagerFactory
//    }
//
//    /**
//     * EntityManagerFactory类似于Hibernate的SessionFactory,mybatis的SqlSessionFactory
//     * 总之,在执行操作之前,我们总要获取一个EntityManager,这就类似于Hibernate的Session,
//     * mybatis的sqlSession.
//     * @param builder
//     * @return
//     */
//    @Bean(name = "masterEntityManagerFactory")
//    @Primary
//    public EntityManagerFactory masterEntityManagerFactory(EntityManagerFactoryBuilder builder) {
//        return this.masterEntityManagerFactoryBean(builder).getObject();
//    }
//
//    /**
//     * 配置事物管理器
//     * @return
//     */
//    @Bean(name = "masterTransactionManager")
//    @Primary
//    public PlatformTransactionManager masterTransactionManager(EntityManagerFactoryBuilder builder) {
//        return new JpaTransactionManager(masterEntityManagerFactory(builder));
//    }

        /**
     * EntityManagerFactory类似于Hibernate的SessionFactory,mybatis的SqlSessionFactory
     * 总之,在执行操作之前,我们总要获取一个EntityManager,这就类似于Hibernate的Session,
     * mybatis的sqlSession.
     * @return
     */
    @Bean(name = "masterEntityManagerFactory")
    @Primary
    public EntityManagerFactory masterEntityManagerFactory() {
        HibernateJpaVendorAdapter vendorAdapter = new HibernateJpaVendorAdapter();
        LocalContainerEntityManagerFactoryBean factory = new LocalContainerEntityManagerFactoryBean();
        factory.setJpaVendorAdapter(vendorAdapter);
        factory.setPackagesToScan("email.tianlangstudio.aliyun.com.email.analysis");
        factory.setDataSource(masterDataSource);//数据源

        factory.setJpaPropertyMap(jpaProperties.getProperties());
        factory.afterPropertiesSet();//在完成了其它所有相关的配置加载以及属性设置后,才初始化
        return factory.getObject();
    }

    /**
     * 配置事物管理器
     * @return
     */
    @Bean(name = "masterTransactionManager")
    @Primary
    public PlatformTransactionManager masterTransactionManager() {
        JpaTransactionManager jpaTransactionManager = new JpaTransactionManager();
        jpaTransactionManager.setEntityManagerFactory(this.masterEntityManagerFactory());
        return jpaTransactionManager;
    }
}
