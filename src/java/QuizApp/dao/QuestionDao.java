/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package QuizApp.dao;

import QuizApp.dbutil.DbConnection;
import QuizApp.dto.Questions;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author my pc
 */
public class QuestionDao {
    public static ArrayList<Questions> getQuestions() throws SQLException
    {
        Connection conn=DbConnection.getConnection();
        PreparedStatement ps=conn.prepareStatement("Select * from questions order by rand() LIMIT 15");
        ResultSet rs=ps.executeQuery();
        ArrayList<Questions> quesionList = new ArrayList<>();
        while(rs.next())
        {
            int qno=rs.getInt(1);
            String question=rs.getString(2);
            String option1=rs.getString(3);
            String option2=rs.getString(4);
            String option3=rs.getString(5);
            String option4=rs.getString(6);
            String correctAnswer=rs.getString(7);
            Questions obj= new Questions(qno,option1,option2,option3,option4,correctAnswer,question);
            quesionList.add(obj);
        }
        return quesionList;
    }
}
