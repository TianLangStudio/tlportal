/**
 * @Description:
 * @Author: tianlang
 * @Email: tianlangstudio@aliyun.com
 * @Date: 20-4-27 下午12:45
 */
package email.tianlangstudio.aliyun.com.other;


import email.tianlangstudio.aliyun.com.common.file.TLFileUtils;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.File;
import java.util.List;
import java.util.Map;

public class TLFileUtilsTest {
    private static final Logger logger = LoggerFactory.getLogger(TLFileUtilsTest.class);
    @Test
    public void listFilesInfoTest() throws Exception{
        List<Map<String,String>> filesInfo = TLFileUtils.listFilesInfo(new File("/data/test"));
        for(Map<String,String> fileInfo : filesInfo) {

            for(Map.Entry<String,String> entry: fileInfo.entrySet()) {
                logger.info("{}->{}", entry.getKey(), entry.getValue());
            }
        }

    }
}
