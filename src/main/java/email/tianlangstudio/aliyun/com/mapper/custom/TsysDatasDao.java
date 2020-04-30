package email.tianlangstudio.aliyun.com.mapper.custom;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import email.tianlangstudio.aliyun.com.model.auto.TsysDatas;

public interface TsysDatasDao {
	
	public List<TsysDatas> selectByPrimaryKeys(@Param("ids") List<String> ids);
	
}