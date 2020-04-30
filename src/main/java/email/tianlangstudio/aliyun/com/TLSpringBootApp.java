package email.tianlangstudio.aliyun.com;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
//import org.springframework.transaction.annotation.EnableTransactionManagement;


/**
 * 项目启动方法
 *
 *
 */
@SpringBootApplication(exclude = DataSourceAutoConfiguration.class)
public class TLSpringBootApp {

    public static void main(String[] args) {

        SpringApplication.run(TLSpringBootApp.class, args);
        System.out.println("邮件分析研判系统启动成功");
    }
}
