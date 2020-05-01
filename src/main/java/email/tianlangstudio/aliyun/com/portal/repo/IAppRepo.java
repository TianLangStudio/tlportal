/**
 * @Description:
 * @Author: tianlang
 * @Email: tianlangstudio@aliyun.com
 * @Date: 20-5-1 上午9:14
 */
package email.tianlangstudio.aliyun.com.portal.repo;

import email.tianlangstudio.aliyun.com.portal.model.App;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


import java.util.List;

@Repository("appRepo")
public interface IAppRepo extends JpaRepository<App, String> {
    List<App> findByStateOrderBySort(Integer state);
}
