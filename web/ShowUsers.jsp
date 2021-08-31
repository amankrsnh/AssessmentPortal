<%-- 
    Document   : ShowQuestions
    Created on : 27 Aug, 2021, 8:55:27 PM
    Author     : my pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="QuizApp.dao.User_scores" %>
<%@page import="org.json.JSONObject" %>
<%@page import="com.google.gson.Gson" %>
<%@page import="com.google.gson.GsonBuilder" %>

<%
//    String userid=(String)session.getAttribute("userid");
//    if(userid==null)
//    {
//        session.invalidate();
//        response.sendRedirect("accessdenied.html");
//        return;
//    }
    
    ArrayList<User_scores> userList=(ArrayList)request.getAttribute("result");
    ArrayList<String> ul=new ArrayList<>();
    int i=1;
    System.out.println("Doing");
    String a="";
    for(User_scores q:userList)
    {
        a+="<tr><td>"+i+"</td><td>"+q.getName()+"</td><td>"+q.getEmail()+"</td><td>"+q.getScore()+"</td></tr>";
        i++;
    }
    System.out.println(ul);
    out.println(a);
%>