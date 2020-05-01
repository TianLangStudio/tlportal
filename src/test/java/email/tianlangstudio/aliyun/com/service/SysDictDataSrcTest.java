/**
 * @Description:
 * @Author: tianlang
 * @Email: tianlangstudio@aliyun.com
 * @Date: 20-5-1 下午1:02
 */
package email.tianlangstudio.aliyun.com.service;

import email.tianlangstudio.aliyun.com.BaseTest;
import email.tianlangstudio.aliyun.com.model.auto.TSysDictData;
import email.tianlangstudio.aliyun.com.portal.service.AppSre;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class SysDictDataSrcTest extends BaseTest {
    private static final Logger logger = LoggerFactory.getLogger(SysDictDataSrcTest.class);
    @Autowired
    SysDictDataService sysDictDataService;
    @Test
    public void testGetByType() {
        List<TSysDictData> dictDataList = sysDictDataService.listByType(AppSre.DICT_APP_CATEGORY);
        for(TSysDictData tSysDictData: dictDataList) {
            logger.info("label:{}, value:{}, sort:{}",
                    tSysDictData.getDictLabel(),
                    tSysDictData.getDictValue(),
                    tSysDictData.getDictSort());
        }
    }
}
