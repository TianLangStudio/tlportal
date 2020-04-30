package email.tianlangstudio.aliyun.com.service;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import email.tianlangstudio.aliyun.com.common.base.BaseService;
import email.tianlangstudio.aliyun.com.common.conf.TLAppConfig;
import email.tianlangstudio.aliyun.com.common.file.FileUploadUtils;
import email.tianlangstudio.aliyun.com.common.support.Convert;
import email.tianlangstudio.aliyun.com.mapper.auto.TsysDatasMapper;
import email.tianlangstudio.aliyun.com.model.auto.TsysDatas;
import email.tianlangstudio.aliyun.com.model.auto.TsysDatasExample;
import email.tianlangstudio.aliyun.com.model.custom.Tablepar;
import email.tianlangstudio.aliyun.com.util.SnowflakeIdWorker;
import email.tianlangstudio.aliyun.com.util.StringUtils;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class SysDatasService implements BaseService<TsysDatas, TsysDatasExample>{
	
	
	@Autowired
	private TsysDatasMapper tsysDatasMapper;
	
	/**
	 * 分页查询
	 * @param pageNum
	 * @param pageSize
	 * @return
	 */
	 public PageInfo<TsysDatas> list(Tablepar tablepar,String searchText){
	        TsysDatasExample testExample=new TsysDatasExample();
	        testExample.setOrderByClause("id+0 DESC");
	        if(searchText!=null&&!"".equals(searchText)){
	        	testExample.createCriteria().andIdLike("%"+searchText+"%");
	        }
	        PageHelper.startPage(tablepar.getPageNum(), tablepar.getPageSize());
	        List<TsysDatas> list= tsysDatasMapper.selectByExample(testExample);
	        PageInfo<TsysDatas> pageInfo = new PageInfo<TsysDatas>(list);
	        return  pageInfo;
	 }

	
	@Override
	public int deleteByPrimaryKey(String ids) {
		List<String> lista=Convert.toListStrArray(ids);
		TsysDatasExample example=new TsysDatasExample();
		example.createCriteria().andIdIn(lista);
		return tsysDatasMapper.deleteByExample(example);
	}
	
	
	
	
	
	
	/**
	 * 文件上传文件存储到文件表
	 * @param record
	 * @param fileURL
	 * @return 主键
	 * @throws IOException 
	 */
	public String insertSelective(MultipartFile file) throws IOException {
		//文件上传获取文件名字
        String files = FileUploadUtils.upload(file);
        //补充完整url地址 
        String filesURL="";
        if ("Y".equals(TLAppConfig.getIsstatic())) {
        	filesURL= TLAppConfig.getIsroot_dir()+files;
		}else {
			filesURL= TLAppConfig.getProfile()+files;
		}
        String fileName=file.getOriginalFilename();
    	// 获得文件后缀名称
    	String suffixName = fileName.substring(fileName.lastIndexOf(".")).toLowerCase();
    	if(StringUtils.isEmpty(suffixName)) {
    		//如果没有后缀默认后缀
    		suffixName=FileUploadUtils.IMAGE_JPG_EXTENSION;
    	}

		return saveSysDatas(filesURL, suffixName);
	}


	/**
	 * 文件上传文件存储到文件表
	 * @return 主键
	 * @throws IOException
	 */
	public String saveFileToBaseDir(MultipartFile file) throws Exception {
		//文件上传获取文件名字
		String baseDir = TLAppConfig.getProfile();
		String files = FileUploadUtils.upload(baseDir,file);
		//补充完整url地址
		String filesURL=baseDir + files;
		String fileName=file.getOriginalFilename();
		// 获得文件后缀名称
		String suffixName = FileUploadUtils.getFileExtention(fileName);
		return saveSysDatas(filesURL, suffixName);
	}

	public String saveSysDatas(String filesURL, String suffixName) {
		TsysDatas record = new TsysDatas();
		//添加雪花主键id
		record.setId(SnowflakeIdWorker.getUUID());
		record.setFilePath(filesURL);
		record.setFileSuffix(suffixName);
		if (tsysDatasMapper.insertSelective(record) > 0) {
			return record.getId();
		}
		return null;
	}

	@Override
	public int insertSelective(TsysDatas record) {
		//添加雪花主键id
		record.setId(SnowflakeIdWorker.getUUID());
		return tsysDatasMapper.insertSelective(record);
	}

	@Override
	public TsysDatas selectByPrimaryKey(String id) {
		
		return tsysDatasMapper.selectByPrimaryKey(id);
	}

	
	@Override
	public int updateByPrimaryKeySelective(TsysDatas record) {
		return tsysDatasMapper.updateByPrimaryKeySelective(record);
	}
	
	public int updateByPrimaryKey(TsysDatas record) {
		return tsysDatasMapper.updateByPrimaryKey(record);
	}

	
	@Override
	public int updateByExampleSelective(TsysDatas record, TsysDatasExample example) {
		
		return tsysDatasMapper.updateByExampleSelective(record, example);
	}

	
	@Override
	public int updateByExample(TsysDatas record, TsysDatasExample example) {
		
		return tsysDatasMapper.updateByExample(record, example);
	}

	@Override
	public List<TsysDatas> selectByExample(TsysDatasExample example) {
		
		return tsysDatasMapper.selectByExample(example);
	}

	
	@Override
	public long countByExample(TsysDatasExample example) {
		
		return tsysDatasMapper.countByExample(example);
	}

	
	@Override
	public int deleteByExample(TsysDatasExample example) {
		
		return tsysDatasMapper.deleteByExample(example);
	}
	

	
}
