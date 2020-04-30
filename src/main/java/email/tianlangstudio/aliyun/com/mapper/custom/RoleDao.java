
package email.tianlangstudio.aliyun.com.mapper.custom;

import java.util.List;

import email.tianlangstudio.aliyun.com.model.auto.TsysRole;

/**
 * 角色Dao
 * @ClassName: RoleDao
 * @author fuce
 * @date 2018年8月25日
 *
 */
public interface RoleDao {
	/**
	 * 根据用户id查询角色
	 * @param userid
	 * @return
	 */
	public List<TsysRole> queryUserRole(String userid);
}
