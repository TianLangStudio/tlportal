package email.tianlangstudio.aliyun.com.mapper.auto;

import email.tianlangstudio.aliyun.com.model.auto.SysArea;
import email.tianlangstudio.aliyun.com.model.auto.SysAreaExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SysAreaMapper {
    long countByExample(SysAreaExample example);

    int deleteByExample(SysAreaExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(SysArea record);

    int insertSelective(SysArea record);

    List<SysArea> selectByExample(SysAreaExample example);

    SysArea selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") SysArea record, @Param("example") SysAreaExample example);

    int updateByExample(@Param("record") SysArea record, @Param("example") SysAreaExample example);

    int updateByPrimaryKeySelective(SysArea record);

    int updateByPrimaryKey(SysArea record);
}