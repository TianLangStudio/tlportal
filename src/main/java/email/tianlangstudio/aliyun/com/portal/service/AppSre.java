/**
 * @Description:
 * @Author: tianlang
 * @Email: tianlangstudio@aliyun.com
 * @Date: 20-5-1 上午9:18
 */
package email.tianlangstudio.aliyun.com.portal.service;

import email.tianlangstudio.aliyun.com.common.datasource.DataSourceType;
import email.tianlangstudio.aliyun.com.common.datasource.TargetDataSource;
import email.tianlangstudio.aliyun.com.model.auto.TSysDictData;
import email.tianlangstudio.aliyun.com.portal.model.App;
import email.tianlangstudio.aliyun.com.portal.repo.IAppRepo;
import email.tianlangstudio.aliyun.com.service.SysDictDataService;
import email.tianlangstudio.aliyun.com.shiro.util.ShiroUtils;
import email.tianlangstudio.aliyun.com.util.BeanUtils;
import email.tianlangstudio.aliyun.com.util.SnowflakeIdWorker;
import email.tianlangstudio.aliyun.com.util.StringUtils;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

@Service
public class AppSre {
    private static final Logger logger = LoggerFactory.getLogger(AppSre.class);
    public static final String DICT_APP_CATEGORY = "app_category";

    @Autowired
    @Qualifier("appRepo")
    private IAppRepo appRepo;

    @Autowired
    SysDictDataService sysDictDataService;

    /**
     * 新增修改　如果有ID就修改　没ID就是新增
     * **/
    @TargetDataSource(DataSourceType.MASTER)
    @Transactional(value = "masterTransactionManager")
    public App save(App app) throws Exception{
        String userName = ShiroUtils.getUser().getUsername();
        Date date = new Date();
        app.setUpdater(userName);
        app.setUpdateAt(date);
        app.setUpdater(userName);
        if(StringUtils.isEmpty(app.getId())) {//新增
            String id = SnowflakeIdWorker.getUUID();
            app.setId(id);
            app.setCreator(userName);
            app.setCreateAt(date);
        }else {//修改
            Optional<App> oldOpt = findById(app.getId());
            assert(oldOpt.isPresent());
            App old = oldOpt.get();
            app = BeanUtils.extendBean(old, app);
        }
        return appRepo.save(app);
    }
    public List<App> findByState(Integer state) {
        return appRepo.findByStateOrderBySort(state);
    }

    public List<App> findAllShowApp() {
        return appRepo.findByStateOrderBySort(App.STATE_SHOW);
    }

    /**
     * 新增修改　如果有ID就修改　没ID就是新增
     * **/
    @TargetDataSource(DataSourceType.MASTER)
    @Transactional(value = "masterTransactionManager")
    public void removeAppById(String id) {
        if(StringUtils.isNotEmpty(id)) {
            appRepo.deleteById(id);
        }
    }

    public List<App> findAll() {
        return appRepo.findAll();
    }

    public Optional<App> findById(String id) {
        return appRepo.findById(id);
    }
    //查找所有Category
    public List<TSysDictData> listAllAppCategory() {
        return sysDictDataService.listByType(DICT_APP_CATEGORY);
    }

    public IAppRepo getAppRepo() {
        return appRepo;
    }

    public void setAppRepo(IAppRepo appRepo) {
        this.appRepo = appRepo;
    }
}
