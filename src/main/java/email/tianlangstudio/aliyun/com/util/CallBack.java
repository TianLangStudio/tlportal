/**
 * @Description:
 * @Author: tianlang
 * @Email: tianlangstudio@aliyun.com
 * @Date: 20-4-26 下午8:44
 */
package email.tianlangstudio.aliyun.com.util;

public interface CallBack<T> {
    void invoke(T t);
}
