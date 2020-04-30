package email.tianlangstudio.aliyun.com.mapper.auto;

import email.tianlangstudio.aliyun.com.model.auto.TsysDatas;
import email.tianlangstudio.aliyun.com.model.auto.TsysDatasExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TsysDatasMapper {
    int countByExample(TsysDatasExample example);

    int deleteByExample(TsysDatasExample example);

    int deleteByPrimaryKey(String id);

    int insert(TsysDatas record);

    int insertSelective(TsysDatas record);

    List<TsysDatas> selectByExample(TsysDatasExample example);

    TsysDatas selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") TsysDatas record, @Param("example") TsysDatasExample example);

    int updateByExample(@Param("record") TsysDatas record, @Param("example") TsysDatasExample example);

    int updateByPrimaryKeySelective(TsysDatas record);

    int updateByPrimaryKey(TsysDatas record);
}