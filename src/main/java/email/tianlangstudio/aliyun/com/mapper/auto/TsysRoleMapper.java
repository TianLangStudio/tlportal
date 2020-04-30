package email.tianlangstudio.aliyun.com.mapper.auto;

import email.tianlangstudio.aliyun.com.model.auto.TsysRole;
import email.tianlangstudio.aliyun.com.model.auto.TsysRoleExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TsysRoleMapper {
    int countByExample(TsysRoleExample example);

    int deleteByExample(TsysRoleExample example);

    int deleteByPrimaryKey(String id);

    int insert(TsysRole record);

    int insertSelective(TsysRole record);

    List<TsysRole> selectByExample(TsysRoleExample example);

    TsysRole selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") TsysRole record, @Param("example") TsysRoleExample example);

    int updateByExample(@Param("record") TsysRole record, @Param("example") TsysRoleExample example);

    int updateByPrimaryKeySelective(TsysRole record);

    int updateByPrimaryKey(TsysRole record);
}