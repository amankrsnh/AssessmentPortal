<%-- 
    Document   : ShowQuestions
    Created on : 27 Aug, 2021, 8:55:27 PM
    Author     : my pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="QuizApp.dto.Questions" %>
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
    
    ArrayList<Questions> questions=(ArrayList)request.getAttribute("result");
    ArrayList<String> questionList=new ArrayList<>();
    ArrayList<String> answerList=new ArrayList<>();
    int i=1;
    System.out.println("Doing");
    for(Questions q:questions)
    {
        String a="<div class='question'><div class='head'>Q<span class='quesno'>"+i+"</span>- "+q.getQuestion()+"</div><div class='ans'><div class='agroup'><input type='radio' name='ques1' id='op1' value='"+q.getAnswer1()+"'> <label for='op1'>"+q.getAnswer1()+"</label></div><div class='agroup'><input type='radio' name='ques1' id='op2' value='"+q.getAnswer2()+"'> <label for='op2'>"+q.getAnswer2()+"</label></div><div class='agroup'><input type='radio' name='ques1' id='op3' value='"+q.getAnswer3()+"'> <label for='op3'>"+q.getAnswer3()+"</label></div><div class='agroup'><input type='radio' name='ques1' id='op4' value='"+q.getAnswer4()+"'> <label for='op4'>"+q.getAnswer4()+"</label></div></div></div>";
        questionList.add(a);
        answerList.add(q.getCorrectAnswer());
        i++;
    }
    System.out.println(questionList);
        System.out.println(answerList);
        System.out.println("Done");
    GsonBuilder gsonBuilder = new GsonBuilder();
    Gson gson = gsonBuilder.create();
    String JSONObject1 = gson.toJson(questionList);
    String JSONObject2 = gson.toJson(answerList);
    JSONObject json=new JSONObject();
    json.put("questionList",JSONObject1);
    json.put("answerList",JSONObject2);
    out.println(json);
%>