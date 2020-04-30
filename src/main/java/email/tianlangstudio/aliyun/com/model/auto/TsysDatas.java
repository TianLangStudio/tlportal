package email.tianlangstudio.aliyun.com.model.auto;

import java.io.Serializable;

public class TsysDatas implements Serializable {
    private String id;

    private String filePath;

    private String fileSuffix;

    private static final long serialVersionUID = 1L;

    public TsysDatas(String id, String filePath, String fileSuffix) {
        this.id = id;
        this.filePath = filePath;
        this.fileSuffix = fileSuffix;
    }

    public TsysDatas() {
        super();
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath == null ? null : filePath.trim();
    }

    public String getFileSuffix() {
        return fileSuffix;
    }

    public void setFileSuffix(String fileSuffix) {
        this.fileSuffix = fileSuffix == null ? null : fileSuffix.trim();
    }
}