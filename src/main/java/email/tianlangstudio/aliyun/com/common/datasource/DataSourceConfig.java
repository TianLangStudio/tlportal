package email.tianlangstudio.aliyun.com.common.datasource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.lookup.AbstractRoutingDataSource;

import javax.sql.DataSource;
import java.util.HashMap;
import java.util.Map;

/**
 * @author lengchuan <lishuijun1992@gmail.com>
 * @date 17 -4-5
 */
@Configuration
public class DataSourceConfig {

    @Bean
    public AbstractRoutingDataSource routingDataSource(
            @Qualifier("slaveDataSource") DataSource slaveDruidDataSource,
            @Qualifier("masterDataSource") DataSource masterDruidDataSource
    ) throws Exception {
        Map<Object, Object> targetDataSources = new HashMap();
        targetDataSources.put(DataSourceType.MASTER.toString(), masterDruidDataSource);
        targetDataSources.put(DataSourceType.SLAVE.toString(), slaveDruidDataSource);
        DynamicDataSource dataSource = new DynamicDataSource(masterDruidDataSource, targetDataSources);
        return dataSource;
    }
}
