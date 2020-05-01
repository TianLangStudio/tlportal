/**
 * @Description:
 * @Author: tianlang
 * @Email: tianlangstudio@aliyun.com
 * @Date: 20-5-1 上午10:14
 */
package email.tianlangstudio.aliyun.com.portal;

import email.tianlangstudio.aliyun.com.portal.model.App;
import email.tianlangstudio.aliyun.com.portal.repo.IAppRepo;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.context.SpringBootTest;

@DataJpaTest
@SpringBootTest
public class AppRepoTest  {

    @Autowired
    IAppRepo appRepo;

    @Test
    public void testSave() {
        App app = new App();
        app.setName("test2");
        app.setLogo("test2");
        appRepo.save(app);

    }
}
