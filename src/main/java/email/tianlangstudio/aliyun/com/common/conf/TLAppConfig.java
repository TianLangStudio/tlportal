package email.tianlangstudio.aliyun.com.common.conf;

import email.tianlangstudio.aliyun.com.util.StringUtils;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

import java.io.File;

/**
 * 读取项目相关配置
 * 
 * @author fuce
 */
@Component
@ConfigurationProperties(prefix = "tlapp")
public class TLAppConfig
{
    /** 项目名称 */
    private String name;
    /** 版本 */
    private String version;
    /** 版权年份 */
    private String copyrightYear;
    /** 上传路径 */
    private static String profile;
    /** 是否开启 上传static **/
    private static String isstatic;
    /** 开启存放静态文件夹后目录 **/
    private static String isroot_dir;

    /** 邮箱发送smtp */
    private static String email_smtp;
    /** 发送邮箱端口 */
    private static String email_port;
    /** 发送邮箱登录账号 */
    private static String email_account;
    /** 发送邮箱登录密码 */
    private static String email_password;
    /** 演示模式 **/
    private static String demoEnabled;
    /** 滚动验证码 **/
    private static Boolean rollVerification;
    /**程序运行时中间结果存放目录***/
    private static String workDir;
    /**文件浏览根目录**/
    private static String fileBrowseDir;


    public static String getWorkDir() {
        if(!workDir.endsWith(File.separator)) {
            workDir += File.separator;
        }
        return workDir;
    }

    public static void setWorkDir(String workDir) {
        TLAppConfig.workDir = workDir;
    }

    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name;
    }

    public String getVersion()
    {
        return version;
    }

    public void setVersion(String version)
    {
        this.version = version;
    }

    public String getCopyrightYear()
    {
        return copyrightYear;
    }

    public void setCopyrightYear(String copyrightYear)
    {
        this.copyrightYear = copyrightYear;
    }

    public static String getFileBrowseDir() {
        if(StringUtils.isNotEmpty(fileBrowseDir) && !fileBrowseDir.endsWith(File.separator)) {
            fileBrowseDir += File.separator;
        }
        return fileBrowseDir;
    }

    public static void setFileBrowseDir(String fileBrowseDir) {
        TLAppConfig.fileBrowseDir = fileBrowseDir;
    }

    public static String getProfile()
    {
        if(!profile.endsWith(File.separator)) {
            profile += File.separator;
        }
        return profile;
    }

    public void setProfile(String profile)
    {
    	TLAppConfig.profile = profile;
    }

	public static String getIsstatic() {
		return isstatic;
	}

	public  void setIsstatic(String isstatic) {
		TLAppConfig.isstatic = isstatic;
	}

	public static String getIsroot_dir() {
		return isroot_dir;
	}

	public void setIsroot_dir(String isroot_dir) {
		TLAppConfig.isroot_dir = isroot_dir;
	}

	public static String getEmail_smtp() {
		return email_smtp;
	}

	public void setEmail_smtp(String email_smtp) {
		TLAppConfig.email_smtp = email_smtp;
	}

	public static String getEmail_port() {
		return email_port;
	}

	public void setEmail_port(String email_port) {
		TLAppConfig.email_port = email_port;
	}

	public static String getEmail_account() {
		return email_account;
	}

	public void setEmail_account(String email_account) {
		TLAppConfig.email_account = email_account;
	}

	public static String getEmail_password() {
		return email_password;
	}

	public void setEmail_password(String email_password) {
		TLAppConfig.email_password = email_password;
	}

	public static String getDemoEnabled() {
		return demoEnabled;
	}

	public void setDemoEnabled(String demoEnabled) {
		TLAppConfig.demoEnabled = demoEnabled;
	}

	public static Boolean getRollVerification() {
		return rollVerification;
	}

	public void setRollVerification(Boolean rollVerification) {
		TLAppConfig.rollVerification = rollVerification;
	}
	
	
	
}
