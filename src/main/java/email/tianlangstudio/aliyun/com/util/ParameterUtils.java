/**
 * @Description:
 * @Author: tianlang
 * @Email: tianlangstudio@aliyun.com
 * @Date: 20-4-23 下午4:19
 */
package email.tianlangstudio.aliyun.com.util;

public class ParameterUtils {
    //pageNum适配　前端页数从１开始算　后端一般从0算
    public static int pageNumAdt(Integer pageNum) {
        if(pageNum == null) {
            pageNum = 1;
        }
        return Math.max(0, --pageNum);
    }
}
