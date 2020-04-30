package email.tianlangstudio.aliyun.com.common.file;

import email.tianlangstudio.aliyun.com.util.StringUtils;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.filefilter.IOFileFilter;
import org.apache.commons.io.filefilter.TrueFileFilter;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 文件处理工具类
 * @author fuce 
 * @date: 2018年9月22日 下午10:33:31
 */
public class TLFileUtils
{

    private TLFileUtils(){}

    /**
     * 输出指定文件的byte数组
     * 
     * @param filename 文件
     * @return
     */
    public static void writeBytes(String filePath, OutputStream os) throws IOException
    {
        FileInputStream fis = null;
        try
        {
            File file = new File(filePath);
            if (!file.exists())
            {
                throw new FileNotFoundException(filePath);
            }
            fis = new FileInputStream(file);
            byte[] b = new byte[1024];
            int length;
            while ((length = fis.read(b)) > 0)
            {
                os.write(b, 0, length);
            }
        }
        catch (IOException e)
        {
            throw e;
        }
        finally
        {
            if (os != null)
            {
                try
                {
                    os.close();
                }
                catch (IOException e1)
                {
                    e1.printStackTrace();
                }
            }
            if (fis != null)
            {
                try
                {
                    fis.close();
                }
                catch (IOException e1)
                {
                    e1.printStackTrace();
                }
            }
        }
    }

    /**
     * 删除文件
     * 
     * @param filePath 文件
     * @return
     */
    public static boolean deleteFile(String filePath)
    {
        boolean flag = false;
        File file = new File(filePath);
        // 路径为文件且不为空则进行删除
        if (file.isFile() && file.exists())
        {
            file.delete();
            flag = true;
        }
        return flag;
    }
    
    /**
     * 读取图片地址 输出到页面
     * @param request
     * @param response
     * @param fileurl
     * @throws IOException 
     */
    public static void readIMGTohtml(HttpServletRequest request, HttpServletResponse response,String fileurl) throws IOException{
        //设置发送到客户端的响应内容类型
        response.setContentType("image/*");
        //读取本地图片输入流
        try (FileInputStream inputStream = new FileInputStream(fileurl);OutputStream out = response.getOutputStream()){
            int i = inputStream.available();
            //byte数组用于存放图片字节数据
            byte[] buff = new byte[i];
            inputStream.read(buff);
            out.write(buff);
        }
    }

    /**
     *
     * 创建文件
     * **/
    public static File createFile(String fileDir, String fileName) throws Exception{
        if(StringUtils.isEmpty(fileName)) {
            throw new IllegalArgumentException("需提供文件名称");
        }
        if(StringUtils.isEmpty(fileDir) || fileDir.split(File.separator).length < 3) {
            //目录长度不够不能创建文件
            throw new IllegalArgumentException("目录长度必须大于等于3");
        }

        File dir = new File(fileDir);
        if(!dir.exists()) {
            dir.mkdirs();
        }
        if(!fileDir.endsWith(File.separator)) {
            fileDir += File.separator;
        }
        return new File(fileDir + fileName);
    }
    public final static String FILE_ENCODE = "UTF8";
    /**
     * 往file中写入内容
     * ***/
    public static void writeToFile(File file, List<String> contents) throws Exception {
        FileUtils.writeLines(file,FILE_ENCODE,contents);
    }

    /*读取文件**/
    public static List<String> readFile(File file) throws Exception {
        return FileUtils.readLines(file, FILE_ENCODE);
    }
    /**
     * 列出目录下的所有文件
     * **/
    public static File[] listFiles(File path) throws Exception {

        return path.listFiles();
    }

    /**
     * 列出目录下所有的文件信息
     * ***/
    public static List<Map<String,String>> listFilesInfo(File path) throws  Exception {
        List<Map<String, String>> filesInfo = new LinkedList<>();
        File[] files = listFiles(path);
        for(File file: files) {
            Map<String,String> fileInfo = new HashMap<>();
            boolean isDir = file.isDirectory();
            String lastMoified = file.lastModified() + "";
            fileInfo.put("name", file.getName());
            fileInfo.put("type", isDir?"dir":"file");
            fileInfo.put("size", isDir?"0":file.length() + "");
            fileInfo.put("createdAt",lastMoified);
            fileInfo.put("updatedAt",lastMoified);
            filesInfo.add(fileInfo);
        }
        return filesInfo;
    }

    /**
     * Str2Files
     * **/
    public static List<File> path2Files(List<String> fileNames) {
        List<File> files = new LinkedList<>();
        for(String fileName: fileNames) {
            files.add(new File(fileName));
        }
        return files;
    }
    /**
     * Str2Files
     * **/
    public static List<String> files2Path(Collection<File> files) {
        List<String> fileNames = new LinkedList<>();
        for(File file: files) {
           fileNames.add(file.getAbsolutePath());
        }
        return fileNames;
    }

}
