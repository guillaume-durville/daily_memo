## 每天5分钟玩转容器技术01

### 1. 鸟瞰容器生态
#### 1.1 容器核心技术
- 容器规范:  
为保证容器生态健康发展,Docker、CoreOS、Google等公司成立了OCI组织,旨在指定开放的容器规范\
包括2个规范：runtime spec和image format spec

- 容器runtime:  
是容器真正运行的地方,runtime根据操作系统kernel紧密协作,为容器提供运行环境\
类比Java, Java程序好比是容器,JVM则是runtime;\
lxc、runc、rkt是目前主流的容器runtime\
Docker最初采用lxc最为runtime, runc是Docker自己开发的容器runtime,符合oci标准\
rkt是CoreOS开发的容器runtime,符合oci标准,也能运行Docker容器

- 容器管理工具:  
对内和runtime交互,对外提供接口和用户交互,如JVM提供java命令来启停java应用\
lxd是lxc对应的管理工具
runc的管理工具是docker engine,docker engine包含后台的daemon和cli,通常说的Docker指的是容器引擎\
rkt的管理工具是rkt cli

- 容器定义工具:  
docker image是docker的容器模板,runtime根据docker image创建容器\
dockerfile是包含命令的文本文件,可以创建docker image\
ACI(App Container Image)与docker image类似,是由CoreOS开发的rkt容器image格式

- registries:  
存储image的仓库叫Registry, 如，Docker Hub、Quay.io等

- 容器OS：  
容器OS专门运行容器,相对常规OS体积更小,启动更快\
如：CoreOS、atomic、ubuntu core

#### 1.2 容器平台技术
平台技术使得容器作为集群在分布式环境运行
- 容器编排引擎:  
基于容器的应用一般会采用微服务架构,这种架构下应用被划分为不同的组件,以服务的形式运行各自的容器中
通过API对外提供服务,集群中的容器会根据业务被动态的创建、迁移和销毁\
基于微服务的应用架构是动态可伸缩的系统.\
所谓的**编排orchestration**, 包括容器管理、调度、集群定义和服务发现等
通过容器编排系统,容器被有机的组合成为服务应用
  - Docker Swarm是Docker开发的容器编排系统\
  - Kubernetes是Google开发的开源容器编平台,支持多种容器的编排\
  - Mesos是通用的集群资源调度平台,和marathon一起提供容器编排引擎功能

- 容器管理平台:  
容器管理平台是架构在容器编排引擎之上的更通用的平台,支持多种编排引擎,抽象了编排引擎的底层实现
为用户提供更方便的功能, 如app catalog和一键部署等；Rancher、ContainerShip

- 基于容器的PaaS：  
基于容器的PaaS为微服务开发人员提供开发、部署和管理应用的平台,使用户不必关心底层基础设施\
如：Deis、Flynn、Dokku

#### 1.3 容器支持技术
- 容器网络：  
容器的网络更加动态和复杂，docker network是Docker原生的网络解决方案\
第三方：flannel、weave、calico

- 服务发现:  
微服务架构中容器的IP和端口会动态变化,需要一种机制让client能够知道如何访问容器的服务\
服务发现会保存容器集群中所有微服务最新的信息,比如IP和端口,并对外提供API,提供服务查询功能\
etcd、consul、zookeeper是服务发现的典型解决方案

- 监控:  
  - docker ps/top/stats
  - docker stats API
  - sysdig
  - cAdvisor/Heapster
  - Weave Scope

- 数据管理:  
Flocker保证持久化数据能够动态迁移

- 日志管理:  
  - docker logs
  - logspout

- 安全性:  
OpenSCAP


---
## 运行第一个容器 - 每天5分钟玩转容器技术（4）
### 1. 安装docker
- ubuntu上:  
```
sudo apt-get install \
   apt-transport-https \
   ca-certificates curl software-properties-common 
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" 

sudo apt-get update
sudo apt-get install docker-ce
```

### 2. 运行一个容器  
`docker run -d -p 80:80 httpd`

### 3. 镜像加速
```
daocloud.io
阿里云加速
systemctl restart docker.service
```
---
## 容器 What, Why, How - 每天5分钟玩转容器技术（6）
### 1. 什么是容器
容器是一种轻量级、可移植、自包含的软件打包技术，使应用程序可以在几乎任何地方以相同的方式运行

- 容器和虚拟机:  
容器运行在宿主的用户空间中,与其他进程隔离

- 为什么要容器:  
容器具有超强的可移植能力  
Container集装箱的思想

- 容器的优势:  
Build once、run anywhere;  
configure once、run anywhere

---
## Docker 架构详解 - 每天5分钟玩转容器技术（7）
### 1. docker的核心组件
#### 1.1 docker客户端
常见的docker客户端是docker命令  
用户也可以通过REST API和服务器通信

#### 1.2 docker服务端
docker daemon是服务器组件,以linux后台进程运行  
systemctl status docker.service

默认情况下,docker daemon只相应本地host的客户端请求  
开启远程请求的话需要:
```
vi /etc/systemd.system/multi-user.target.wants/docker.service
ExceStart=/usr/bin/dockerd -H fd:// -H tcp://0.0.0.0

systemctl daemon-reload
systemctl restart docker.service
docker -H IP info
```

#### 1.3 Docker镜像
docker build \<Dockerfile\>

#### 1.4 docker容器
Docker镜像的运行实例

#### 1.5 registry
存放image的仓库,公有仓库和私有仓库  
docker pull  
docker run

---
## Docker 组件如何协作？- 每天5分钟玩转容器技术（8）
### 1. docker images 查看本地的镜像  
docker ps 或者 docker container ls #显示运行中的容器


