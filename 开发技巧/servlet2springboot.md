# jsp+servlet转springboot启动
## 1 添加依赖
```xml
<parent>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-parent</artifactId>
    <version>1.5.7.RELEASE</version>
</parent>
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-web</artifactId>
</dependency>
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-tomcat</artifactId>
    <!--<scope>provided</scope>-->
</dependency>
```

## 2 新增spring启动类
```java
package com.netschina.unzipagent;

import com.netschina.unzipagent.controller.MediaParseServlet;
import com.netschina.unzipagent.controller.MediaServlet;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.boot.web.servlet.ServletRegistrationBean;
import org.springframework.context.annotation.Bean;

/**
 * Created by keeley on 2017/10/13.


 * 如果用servlet3.0注解的 ServletComponentScan 能自动注册bean
 * 如果用servlet2.5样子  在web.xml配置的，需要在这里重新配置一遍(如下 )
 */
@SpringBootApplication
@ServletComponentScan
public class WebApplication {
    @Bean
    public ServletRegistrationBean mediaServlet(){
        return new ServletRegistrationBean(new MediaServlet(),"/media-length");
    }
    @Bean
    public ServletRegistrationBean mediaParseServlet(){
        return new ServletRegistrationBean(new MediaParseServlet(),"/media-parse");
    }
    @Bean
    public ServletRegistrationBean unzipScormServlet(){
        return new ServletRegistrationBean(new MediaParseServlet(),"/unzip");
    }
    public static void main(String[] args) throws Exception {
        SpringApplication.run(WebApplication.class, args);
    }
}

```

## 3 视情况添加配置
```
/src/main/resources/application.properties
```

## 4 参考
[https://stackoverflow.com/questions/20915528/how-can-i-register-a-secondary-servlet-with-spring-boot](https://stackoverflow.com/questions/20915528/how-can-i-register-a-secondary-servlet-with-spring-boot)
[https://docs.spring.io/spring-boot/docs/current/reference/html/howto-embedded-servlet-containers.html](https://docs.spring.io/spring-boot/docs/current/reference/html/howto-embedded-servlet-containers.html)