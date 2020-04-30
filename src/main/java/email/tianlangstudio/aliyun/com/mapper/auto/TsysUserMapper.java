package email.tianlangstudio.aliyun.com.mapper.auto;

import email.tianlangstudio.aliyun.com.model.auto.TsysUser;
import email.tianlangstudio.aliyun.com.model.auto.TsysUserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TsysUserMapper {
    long countByExample(TsysUserExample example);

    int deleteByExample(TsysUserExample example);

    int deleteByPrimaryKey(String id);

    int insert(TsysUser record);

    int insertSelective(TsysUser record);

    List<TsysUser> selectByExample(TsysUserExample example);

    TsysUser selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") TsysUser record, @Param("example") TsysUserExample example);

    int updateByExample(@Param("record") TsysUser record, @Param("example") TsysUserExample example);

    int updateByPrimaryKeySelective(TsysUser record);

    int updateByPrimaryKey(TsysUser record);
}