## Spring Boot Docker Demo

#### 使用mvnw构建统一的maven环境
* 安装mvnw
```bash
mvn -N io.takari:maven:wrapper -Dmaven=3.3.9
```

* 使用mvnw命令
将mvn命令中的mvn替换为./mvnw（须在项目根目录下执行）即可，如:
```bash
./mvnw package
```

---
#### docker化
* 打包镜像
```bash
./mvnw package
```

* 启动
```bash
docker run -e "JAVA_OPTS=-Xms128m -Xmx768m" -p 9000:9000 -t spring-boot-applications/spring-boot-docker-demo:1.0.0-SNAPSHOT --server.port=9000
```

---
#### 参考资料
* https://docs.docker.com/
* https://docs.docker.com/engine/reference/builder/
* https://github.com/spotify/dockerfile-maven/tree/v1.4.12
