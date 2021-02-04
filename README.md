## web.xml (Apache Tomcat)
```xml
<filter>
    <filter-name>setCharacterEncodingFilter</filter-name>
    <filter-class>org.apache.catalina.filters.SetCharacterEncodingFilter</filter-class>
    <init-param>
        <param-name>encoding</param-name>
        <param-value>UTF-8</param-value>
    </init-param>
    <async-supported>true</async-supported>
</filter>
```