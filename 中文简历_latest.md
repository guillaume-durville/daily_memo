# __靳猛 - 个人简历__

### __基本信息__
***
- 电话: 18362703895
- 邮箱: <jinmeng260@gmail.com>
- 学历: 巢湖学院 计算机科学与技术专业 本科
- 工作年限：6年
- 期望职位：Linux运维开发、云计算相关

### __技能__
***
- 英语: 书面，口语沟通熟练
- 操作系统: 熟悉RHEL，CentOS6/7，Debian，Ubuntu等发行版
- 自动化工具: 熟悉Kickstart/pxe，Puppet，Ansible，Fabric等技术
- 版本控制/持续集成/部署: 熟练使用Git，Gitlab，Jenkins，Maven等
- 编程语言: 熟悉Shell，Python等编程语言
- 网络协议: 熟悉TCP/IP协议栈；HTTP，SNMP，SSH，DNS等应用层协议原理
- 监控: 熟悉Nagios，Zabbix，Ominibus，Tivoli，Promethus，Grafana等监控方案
- 服务器架构: 熟悉主流LANMP，LVS，Nginx，Haproxy，keepalived，MySQL主从复制等HA/LB技术
- 应用服务器：掌握Nginx，Apache，Tomcat，NFS，ELFK等应用部署和优化等
- 性能安全: 熟悉Linux内存/进程管理，内核优化，Iptables/Firewalld
- 数据库: 掌握基本SQL语句，掌握MySQL，NoSQL(Redis/Memcached/MongoDB等)
- 虚拟化/容器技术: 熟悉VMware，Vagrant，Virtualbox，KVM虚拟化及Docker,Swarm,Kubernetes等容器技术
- 项目管理: 熟悉ITIL，ITSM等项目流程管理理念；熟悉Devops，Agile开发文化
- 云平台: Azure，Aliyun
- Trouble Shooting： 丰富的运维经验，掌握常用的排错和审计方法

### __工作/项目经验__
***
**上海智尧信息科技有限公司** | Linux系统运维 | *2017.5-至今*
- 工作内容:  
在佛吉亚中国投资有限公司(乙方)，主要负责集团全球多个数据中心4000台左右服务器的监控工作，监控系统服务器维护优化等. 
开发和完善监控插件库(python)，并负责代码和配置发布，服务器应用日志备份，数据库维护等

- 项目:  
  1. __项目名称__： Central监控架构的升级项目  
  __项目描述__： 该项目主要为应对Nagios监控hosts的数目过多，国际链路等问题；我全程参与了讨论和实施，利用mod_Gearman/LVS等技术构建了以前端应用服务器提供web服务，各DC有指定的Worker负载job任务的高可用+job分发监控系统; 进行Check_mk相关培训，并参与搭建亚洲部分的Hydra监控服务器端的搭建，后期将各地工厂本地的服务器纳入Hydra Local Monitoring监控系统中  
  __项目总结__： 项目完成了的对各plants本地的服务器的监控，监控从此划分为Central和Local两个部分; 项目也降低了之前的负载及解决了监控分散的问题，并且实现了全球服务器监控的集中化(Nagios作为集团Central Monitoring的系统)也实现了服务器的高可用, 整合了集团整个监控架构。项目期间个人的英文沟通能力和团队协作能力得到了很大的提高，对HA、LB及分布式技术有了更深刻的理解和掌握，熟练了python面向对象编程的能力(自动化和监控模块编写)

  2. __项目名称__： 基于Jenkins的CI/CD流程搭建和优化，实现的自动化构建  
  __项目描述__： 此项目我参与了包括前期基于tomcat容器方式搭建Jenkins发布机集群，配置优化JVM参数，全局属性配置；后期使用Jenkins Slave集群管理实现一主多从架构，使用使用声明式方式的Pipeline进行构建，多分支任务不同环境的发布和校验  
  __项目总结__： 该项目是公司Devops的一次重要实践，实现持续集成和交付管道的落地和实施，即Pipeline as Code(jenkinsfile方式); 个人通过此项目更深刻的理解了软件的开发、测试、预发布、部署、交付等重要阶段；掌握了Jenkins(包括插件)、GitLab等开源工具的使用；理解并实践了灰度、AB，蓝绿等发布策略
   
  3. __项目名称__： kubernetes容器集群搭建及容器化开发测试环境  
  __项目描述__： 此项目主要针对测试环境和预发布环境，为了提高开发/测试/上线过程的灵活性和效率，将一些应用的测试进行容器化；我参与kubernetes集群架构的搭建和后期应用服务yaml文件的编写；并使用ES进行集群日志的收集和集中存储分析  
  __项目总结__： 应用的容器化降低环境配置复杂性和应用间的耦合，该项目实现了部分应用开发和管理的效率和CI(基于Jenkins的k8s插件)，保证了应用的负载均衡，3个kubernetes master节点也保证了高可用，个人在项目过程中对kubernetes架构原理、搭建、优化及故障分析处理方案有了深刻的掌握和提高

**上海求彤控制电器有限公司** | 系统运维工程师 | *2015.1-2017.5*
- 工作内容:  
ERP、数据库和其他应用系统服务器的运维管理，包括备份、发布、更新、优化等
维护监控系统及被监控业务的日常运行情况、处理突发事件，保证业务的高可用率和性能
负责网站上线代码发布等

- 项目:
  1. __项目名称__： Web架构升级项目(高可用性升级)\
  __项目描述__： 负责对现阶段架构进行整理并确定方案，利用LVS的DR模式和keepalived对web服务器进行高可用升级\
  __项目总结__： 项目实施后网站的可用率提高至99%左右，个人也对LANMP经典架构有了深刻的理解和掌握

  2. __项目名称__： ERP项目和MES系统的数据集成项目\
  __项目描述__： 配合实施方，沟通用户进行需求分析调研和方案拟定，完成了数据库网关接口搭建配置和测试，并制定备份方案，后期对用户进行培训、文档编写等\
  __项目总结__： 项目的成功上线，打通了MES和现用的ERP系统，减少了用户重复工作，提高数据的安全性，通过这个项目大大提高个人和供应商、用户沟通的能力，并学习了ERP及MES系统的原理逻辑及项目管理实践，保证了项目质量

**苏州阿特斯阳光电力有限公司** | 运维工程师 | *2013.8-2014.12*
- 工作内容:  
主要负责服务器的运维管理工作，包括安全备份软件发布，文档知识库SOP编写的管理等