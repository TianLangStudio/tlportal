package email.tianlangstudio.aliyun.com.model.auto;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class TsysFile {
    //正在入库
    public static final long IMPORTING = -2;
    //入库出错
    public static final long IMPORT_ERROR = -3;
    //正在解析
    public static final int ANALYSISING = -2;
    //解析出错
    public static final int ANALYSIS_ERROR = -3;
    private String id;

    private String fileName;
    private Integer emailCount;//包含Email个数
    private Long importCount;//包含去重后的Email个数　正常导入的Email个数
    private String caseId;//关联的案件ID
    private String createUserId;

    private String createUserName;
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    private Date createTime;

    private String updateUserId;

    private String updateUserName;
    
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    private Date updateTime;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName == null ? null : fileName.trim();
    }

    public String getCreateUserId() {
        return createUserId;
    }

    public void setCreateUserId(String createUserId) {
        this.createUserId = createUserId == null ? null : createUserId.trim();
    }

    public String getCreateUserName() {
        return createUserName;
    }

    public void setCreateUserName(String createUserName) {
        this.createUserName = createUserName == null ? null : createUserName.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getUpdateUserId() {
        return updateUserId;
    }

    public void setUpdateUserId(String updateUserId) {
        this.updateUserId = updateUserId == null ? null : updateUserId.trim();
    }

    public String getUpdateUserName() {
        return updateUserName;
    }

    public void setUpdateUserName(String updateUserName) {
        this.updateUserName = updateUserName == null ? null : updateUserName.trim();
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

	public TsysFile() {
		super();
	}

    public Integer getEmailCount() {
        return emailCount;
    }

    public void setEmailCount(Integer emailCount) {
        this.emailCount = emailCount;
    }

    public Long getImportCount() {
        return importCount;
    }

    public void setImportCount(Long importCount) {
        this.importCount = importCount;
    }

    public String getCaseId() {
        return caseId;
    }

    public void setCaseId(String caseId) {
        this.caseId = caseId;
    }

    public TsysFile(String id, String fileName, String createUserId, String createUserName, Date createTime,
                    String updateUserId, String updateUserName, Date updateTime) {
		super();
		this.id = id;
		this.fileName = fileName;
		this.createUserId = createUserId;
		this.createUserName = createUserName;
		this.createTime = createTime;
		this.updateUserId = updateUserId;
		this.updateUserName = updateUserName;
		this.updateTime = updateTime;
	}
    
    
}