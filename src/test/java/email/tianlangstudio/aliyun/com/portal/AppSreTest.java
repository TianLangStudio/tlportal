/**
 * @Description:
 * @Author: tianlang
 * @Email: tianlangstudio@aliyun.com
 * @Date: 20-5-1 上午9:45
 */
package email.tianlangstudio.aliyun.com.portal;

import email.tianlangstudio.aliyun.com.BaseTest;
import email.tianlangstudio.aliyun.com.portal.model.App;
import email.tianlangstudio.aliyun.com.portal.service.AppSre;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Optional;

public class AppSreTest extends BaseTest {
    @Autowired
    private AppSre appSre;
    @Test
    public void testSaveFindByState() throws Exception{
        App app = new App();
        app.setName("test");
        app.setLogo("test");
        App appSaved = appSre.save(app);
        Assert.assertNotNull(appSaved);
        String id = appSaved.getId();
        Assert.assertNotNull(id);
        List<App> appList = appSre.findByState(App.STATE_SHOW);
        Assert.assertTrue(appList.size() > 0);
        Optional<App> appOpt = appSre.findById(id);
        Assert.assertTrue(appOpt.isPresent());
        App appFind = appOpt.get();
        //测试动态更新
        App appEdit = new App();
        appEdit.setId(id);
        appEdit.setState(App.STATE_HIDDEN);
        //更新
        appSre.save(appEdit);
        appList = appSre.findByState(App.STATE_HIDDEN);
        Assert.assertTrue(appList.size() > 0);
        appOpt = appSre.findById(id);

        Assert.assertTrue(appOpt.isPresent());
        Assert.assertEquals(appOpt.get().getName(), "test");

    }

}
