# ABC-Jobs-Portal
Web application works similar to Linkedin that allows user find a job and apply for job
oppurtunities. User can register and login to the website, search another user,
edit profile, change password, post a thread, comment thread post. The
application also includes administration that has authority to manage the
user data and also sending bulk email with email sender.


## Project Overview
There are 2 types of users in this Community portal. They are
1. Software Programmer
2. Administrator

Software Programmer can perform following functions in the portal
1. Login and Register in to the portal
2. Search & Find Other Programmers after login and view their profile.
3. Change password retrieval functionality.
4. Update their Profile after logging in.
5. Create Threads & Post Replies to a Thread
6. Post Job Opportunities in the Portal
7. Apply for Job Opportunities in the portal

Administrator can perform following functions in the portal
1. Administer user data.
2. Send bulk email inviting programmers to register on the community portal

## Technologies Used & System Requirements
Backend  : Java SE 17, MySQL 8, Spring MVC <br/>
Frontend : JSP, JavaScript, CSS, Bootstrap <br/>
Server   : Apache Tomcat 9.0 <br/>
IDE      : Eclipse IDE JEE 2022

## HOW TO RUN
1. **Import Existing Project into Eclipse IDE** <br/>
2. **Create MySQL database**
```bash
mysql> create database abc_jobs
```
3. **Configure persistence.xml for Database Username and Password**
```xml
<persistence-unit name="abcjob">
  <properties>
    <property name="javax.persistence.jdbc.url" value="jdbc:mysql://localhost:3306/abc_jobs" />
    <property name="javax.persistence.jdbc.user" value="<YOUR_DB_USERNAME>" />
    <property name="javax.persistence.jdbc.password" value="<YOUR_DB_PASSWORD>" />
    <property name="javax.persistence.jdbc.driver" value="com.mysql.jdbc.Driver" />
    <property name="hibernate.show_sql" value="true" />
    <property name="hibernate.format_sql" value="true" />
  </properties>
</persistence-unit>
```
4. **Run application on Tomcat Server 9.0**
