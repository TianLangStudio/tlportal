# 大数据平台之Portal
这是后端前端在[Portal前端](https://github.com/TianLangStudio/react-desktops)
## 项目介绍
long long ago 在公司做了一个大数据平台的应用管理中心，用来管理展示数据相关的应用、统一数据中心访问入口
多年过去后仍有也已离职的同事问起，只可惜已无源码（只留局部图片）。
![bi.500.com](https://raw.githubusercontent.com/TianLangStudio/react-desktops/master/docs/portal2014.png) 
当时使用的ExtJS开发类似Windows系统桌面，恰遇react-desktops项目与原来项目UI相近，基于此再做一版
![TLPortal](https://raw.githubusercontent.com/TianLangStudio/react-desktops/master/docs/portal.png) 
```感谢500.com的数据平台组，我在哪里更深入的理解了数据处理接触学习了大数据，才有能力跳槽
   500.com一个神奇的网站　
   若不是互联网彩票被叫停，我们应该还在一起快乐的玩耍
   感谢 感激
```
### 截图
![添加应用分类](https://raw.githubusercontent.com/TianLangStudio/tlportal/master/doc/imgs/appCategoryAdd.png) 
![添加应用](https://raw.githubusercontent.com/TianLangStudio/tlportal/master/doc/imgs/appAdd.png) 
![前端展示](https://raw.githubusercontent.com/TianLangStudio/tlportal/master/doc/imgs/appList.png) 
### 前端技术栈
- react
- webpack
- react-desktop
- redux
- react-router

### 后端技术栈
- Java
- Spring
- Mysql


## 安装部署运行
后端基于[Springboot_v2](https://github.com/fuce1314/Springboot_v2)开发
```
开发中
```

## Q&A
> 修改了项目报名后报Dao类和Model类加载失败Not a managed type
- 如果使用的JPA需要查看common/conf/MasterDataSourceConfig类，里面有两处包名配置：
一处在类注解上是Dao包扫描路径，一处在masterEntityManagerFactory方法中是Model所在包名
- 如果使用的MyBatis需要查看common/conf/MyBatisConfig类，在类注解中有Mapper包扫描路径

