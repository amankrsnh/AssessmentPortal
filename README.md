# Online Assessment Portal

This is an MCQ-based Online Assessment Portal made by Aman Kumar Singh, Kunal Jain and Divya Joshi. The web application is made using `Java Servlets` and `Java Server Pages` as backend, `MySQL` as Database and for the front-end part, we have used `HTML`, `CSS`, `JS`, `jQuery`, and `Bootstrap`.

## Demonstration Video:

![demo](https://drive.google.com/file/d/17tPRmIjJ6rcfwdLWwMxbB316tgYu6Ont/view?usp=sharing)

## Contribution of Members:

* `Frontend` : ***Kunal Jain***
* `Backend + Database` : ***Aman Kumar Singh***
* `JavaScript Functionality` : ***Divya Joshi***

## Tech Stack:

1. `Frontend` : HTML5, CSS3, Javascript
2. `Backend` : Java Servlets, Java Server Pages(JSP)
3. `Database` : MySQL


## Specifications Assigned:

1. Assessment shall be MCQ pattern.✔️

2. There must be a question pool for the assessment.✔️

3. The questions displayed in the assessment shall be only from that pool.✔️

4. Number of questions in the pool shall be more than questions displayed.✔️

5. Set a time limit for the assessment (individual timer for a question/optional).✔️

6. Question order shall be shuffled for each candidate appearing.✔️

```
All specifications is satisfied ✔️
```

## Deployment:

## Pages Functionality:
   1. Login page - to take data of users attempting for assessment.
   3. Instructions page - valid users will move forward to instructions page where they will get all instructions related to assessment.
   4. Main Page - after reading all instrctions if user agrees that they read intructions and accept that then all valid users are allowed to give assessment.
   5. Final Score Page - after attempting assessment in case user submits or ran out of time (in case of auto-submit) users will redirect to that page on which they will get their resultant scores.
   
- Assessment is of 15 minutes.
- Assessment will auto-submit in case of no submission before times up.
- Assessment can be submit anytime and at any point of assessment, score will calculated accordingly.
- There is no negative marking.
- 15 questions asked in shuffled order from question pool of 30 questions.

## Project Setup: 

**Requirements:** Pre-installed `Netbeans` with `Apache Tomcat-Server` and `MySQL`.

1. Clone this repository in your local machine using the following command:

    ```git
    git clone https://github.com/kunal2899/AssessmentPortal.git
    ```

2. Open the cloned repository in Netbeans IDE.

3. Integrate the `.jar` files available inside the cloned directory in your Netbean's project.
    - 5_6122867091839124788.jar
    - gson-2.2.2.jar
    - mysql-connector-java-8.0.26.jar

4. Add these lines of code to the `web.xml` file in your project:
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

5. Now just **RUN** the Project.

6. If everything is done in order then this will open the website in your local machine at http://localhost:8080/ 
