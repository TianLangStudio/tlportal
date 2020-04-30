package email.tianlangstudio.aliyun.com.common.datasource;

import com.alibaba.druid.pool.DruidDataSource;
import com.alibaba.druid.spring.boot.autoconfigure.DruidDataSourceBuilder;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;

import javax.sql.DataSource;

/**
 * @author lengchuan <lishuijun1992@gmail.com>
 * @date 17-4-17
 */
@Configuration
public class DruidDataSourceConfig {
    @Bean(name="masterDataSource")
    @ConfigurationProperties("spring.datasource.druid.master")
    @Primary
    public DataSource masterDataSource()
    {
        return DruidDataSourceBuilder.create().build();
    }

    @Bean(name="slaveDataSource")
    @ConfigurationProperties("spring.datasource.druid.slave")
    @Primary
    public DataSource slaveDataSource()
    {
        return DruidDataSourceBuilder.create().build();
    }
}
