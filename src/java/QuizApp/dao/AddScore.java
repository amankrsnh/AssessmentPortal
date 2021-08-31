/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package QuizApp.dao;

import QuizApp.dbutil.DbConnection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author my pc
 */
public class AddScore {
    private static PreparedStatement ps1;
    private static Statement st1;
    static
    {
        try
        {
            ps1=DbConnection.getConnection().prepareStatement("Insert into user_scores values(?,?,?)");
            st1=DbConnection.getConnection().createStatement();
            
        }
        catch(SQLException sqle)
        {
            sqle.printStackTrace();
        }
    }
    public static boolean addScore(User_scores us) throws SQLException
    {
        ps1.setString(1, us.getName());
        ps1.setString(2, us.getEmail());
        ps1.setInt(3, us.getScore());
        return (ps1.executeUpdate()!=0);
    }
    public static ArrayList<User_scores> getScore() throws SQLException
    {
        ArrayList<User_scores> userList=new ArrayList<>();
        ResultSet rs=st1.executeQuery("Select * from user_scores");
        while(rs.next())
        {
            User_scores us=new User_scores();
            us.setName(rs.getString(1));
            us.setEmail(rs.getString(2));
            us.setScore(rs.getInt(3));
            userList.add(us);
        }
        return userList;
    }
}
