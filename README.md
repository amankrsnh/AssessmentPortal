# Online AssessmentPortal: 

This is an MCQ-based Online Assessment Portal made by Aman Kumar Singh, Kunal Jain and Divya Joshi. The web application is made using Java Servlets and Java Server Pages as backend, MySQL as Database and for the front-end part, we have used HTML, CSS, JS, jQuery, and Bootstrap.

## Demonstration Video:


# Contribution of Members:

* Front-end -> Kunal Jain
* Backend + Database -> Aman Kumar Singh
* JavaScript Functionality -> Divya Joshi

# Tech Stack:

1. Frontend: HTML5, CSS3, Javascript
2. Backend : Java Servlets, Java Server Pages(JSP)
3. Database : MySQL


# Specifications Assigned:

1. Assessment shall be MCQ pattern.✔️

2. There must be a question pool for the assessment.✔️

3. The questions displayed in the assessment shall be only from that pool.✔️

4. Number of questions in the pool shall be more than questions displayed.✔️

5. Set a time limit for the assessment (individual timer for a question/optional).✔️

6. Question order shall be shuffled for each candidate appearing.✔️

# Deployment:


# Project Setup: 

**Requirements:** Pre-installed `Netbeans` with `Apache Tomcat-Server` and `Mysql`.

1. Clone this repository in your local machine using the following command:

    `git clone https://github.com/kunal2899/AssessmentPortal.git`

2. Integrate the `.jar` files available inside the cloned directory in your local machine.

3. Add these lines of code to the `web.xml` file in your project:
-----
``` xml
<?xml version="1.0" encoding="UTF-8"?>
<web-app version="3.1" xmlns="http://xmlns.jcp.org/xml/ns/javaee" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://xmlns.jcp.org/xml/ns/javaee http://xmlns.jcp.org/xml/ns/javaee/web-app_3_1.xsd">
    <servlet>
        <servlet-name>ShowQuestionsControllerServlet</servlet-name>
        <servlet-class>QuizApp.controller.ShowQuestionsControllerServlet</servlet-class>
    </servlet>
    <servlet-mapping>
        <servlet-name>ShowQuestionsControllerServlet</servlet-name>
        <url-pattern>/ShowQuestionsControllerServlet</url-pattern>
    </servlet-mapping>
    <session-config>
        <session-timeout>
            30
        </session-timeout>
    </session-config>
</web-app>
```
-----

4. Now just **RUN** the Project.

5. This will open the website in your local machine at http://localhost:8080/ 
