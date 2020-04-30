package email.tianlangstudio.aliyun.com.common.conf;

import java.util.HashMap;
import java.util.Map;
import javax.sql.DataSource;

import email.tianlangstudio.aliyun.com.common.datasource.DataSourceType;
import email.tianlangstudio.aliyun.com.common.datasource.DynamicDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.jdbc.datasource.lookup.AbstractRoutingDataSource;
import org.springframework.transaction.PlatformTransactionManager;
import com.alibaba.druid.spring.boot.autoconfigure.DruidDataSourceBuilder;

/**
 * Mybatis多数据源配置
 * 参考文章：https://www.cnblogs.com/geekdc/p/10963476.html
 * @ClassName: MybatisConfig
 * @author fuce
 * @date 2019-12-06 21:11
 */
@Configuration
@MapperScan(basePackages = "email.tianlangstudio.aliyun.com")
public class MybatisConfig {
    @Bean
    public SqlSessionFactory sqlSessionFactory(AbstractRoutingDataSource routingDataSource) throws Exception {
        SqlSessionFactoryBean factoryBean = new SqlSessionFactoryBean();
        factoryBean.setDataSource(routingDataSource);
//        factoryBean.setTypeAliasesPackage();
        // 设置mapper.xml的位置路径
        Resource[] resources = new PathMatchingResourcePatternResolver().getResources("classpath*:mybatis/*/*.xml");
        factoryBean.setMapperLocations(resources);
        return factoryBean.getObject();
    }
    
    /**
     * 配置@Transactional注解事务
     * @param dynamicDataSource
     * @return
     * @author fuce
     * @Date 2019年12月7日 上午11:31:33
     */
    @Bean
    public PlatformTransactionManager transactionManager(DynamicDataSource dynamicDataSource){
        return new DataSourceTransactionManager(dynamicDataSource);
    }
}
