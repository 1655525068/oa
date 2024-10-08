#### 经典 oa(OA自动化办公系统)
 - 办公自动化（OA）是面向组织的日常运作和管理,员工及管理者使用频率最高的应用系统，极大提高公司的办公效率。
 - 如果帮助了您，请给我们点Star.
 - 账号：soli 密码：123456

#### 项目介绍
- oa是一个OA办公自动化系统，使用Maven进行项目管理。
- 基于springboot框架开发的项目，mysql底层数据库，前端采用freemarker模板引擎，Bootstrap作为前端UI框架。
- 集成了jpa、mybatis等框架。作为初学springboot的同学是一个很不错的项目，如果想在此基础上面进行OA的增强，也是一个不错的方案。

#### 前端技术
| 技术      |    名称| 版本|	官网|
| :--------: | :--------:| :--: |:--:|
| freemarker|模板引擎|springboot1.5.6.RELEASE集成版本|https://freemarker.apache.org/|
| Bootstrap|前端UI框架|3.3.7|http://www.bootcss.com/|
| Jquery|快速的JavaScript框架|1.11.3|https://jquery.com/|
|kindeditor|HTML可视化编辑器|4.1.10|http://kindeditor.net|
|My97 DatePicker|时间选择器|4.8 Beta4|http://www.my97.net/|

#### 后端技术

| 技术 | 名称 | 版本 | 官网 |
| :--------: | :--------:|:---:|:------:|
|SpringBoot|SpringBoot框架|1.5.6.RELEASE|https://spring.io/projects/spring-boot|
|JPA|spring-data-jpa|1.5.6.RELEASE|https://projects.spring.io/spring-data-jpa|
|Mybatis|Mybatis框架|1.3.0|http://www.mybatis.org/mybatis-3|
|fastjson|json解析包|1.2.36|https://github.com/alibaba/fastjson|
|pagehelper|Mybatis分页插件|1.0.0|https://pagehelper.github.io|

#### 部署流程

	    1.下载项目、把oa.sql导入本地数据库
		2. 修改application.properties，
		3. 修改数据源，oa——>自己本地的库名，员工号和密码修改成自己的
		4. 修改相关路径，配置图片路径、文件路径、附件路径。(static/image/oa.jpg 拷贝到配置的图片路径下，不然会报 FileNotFoundException )
		5. Application.java中的main方法运行，控制台没有报错信息，数据启动时间多久即运行成功
		6. 在浏览器中输入localhost:8088/logins
		
#### 4. 演示地址

#####     账号：test      密码：test
#####     账号：soli      密码：123456


