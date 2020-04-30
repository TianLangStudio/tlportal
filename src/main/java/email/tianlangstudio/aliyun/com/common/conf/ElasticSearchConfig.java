/*

 */
/** @Description:
 * @Author: tianlang
 * @Email: tianlangstudio@aliyun.com
 * @Date: 20-4-24 下午2:09
 *//*


package email.tianlangstudio.aliyun.com.common.conf;

import org.elasticsearch.client.Client;
import org.elasticsearch.client.RestHighLevelClient;
import org.elasticsearch.client.transport.TransportClient;
import org.elasticsearch.common.settings.Settings;

import org.elasticsearch.common.transport.InetSocketTransportAddress;
import org.elasticsearch.common.transport.TransportAddress;
import org.elasticsearch.transport.client.PreBuiltTransportClient;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.convert.support.DefaultConversionService;
import org.springframework.data.elasticsearch.client.ClientConfiguration;
import org.springframework.data.elasticsearch.client.RestClients;
import org.springframework.data.elasticsearch.config.ElasticsearchConfigurationSupport;

import org.springframework.data.elasticsearch.core.ElasticsearchTemplate;


import java.net.InetAddress;
import java.net.UnknownHostException;

@Configuration
public class ElasticSearchConfig extends ElasticsearchConfigurationSupport {
   */
/* @Bean
    RestHighLevelClient client() {
        ClientConfiguration clientConfiguration = ClientConfiguration.builder()
                .connectedTo("localhost:9200")
                .build();
        return RestClients.create(clientConfiguration).rest();
    }*//*

   @Bean
   public Client elasticsearchClient() throws UnknownHostException {
       Settings settings = Settings.builder()
               .put("cluster.name", "elasticsearch")
               .put("cluster.nodes", "127.0.0.1:9300")
               .build();
       TransportClient client = new PreBuiltTransportClient(settings);
      // client.addTransportAddress(new InetSocketTransportAddress(InetAddress.getByName("127.0.0.1"), 9300));
       return client;
   }

    @Bean(name = { "elasticsearchOperations", "elasticsearchTemplate" })
    public ElasticsearchTemplate elasticsearchTemplate() throws UnknownHostException {
        return new ElasticsearchTemplate(elasticsearchClient());
    }

}
*/
