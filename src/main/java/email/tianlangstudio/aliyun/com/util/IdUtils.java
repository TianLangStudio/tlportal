/**
 * @Description:
 * @Author: tianlang
 * @Email: tianlangstudio@aliyun.com
 * @Date: 20-4-23 下午2:36
 */
package email.tianlangstudio.aliyun.com.util;

import java.util.UUID;

public class IdUtils {
    public static String modelId() {
       return UUID.randomUUID().toString();
    }
}
