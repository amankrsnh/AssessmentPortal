/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package QuizApp.dao;

import QuizApp.dbutil.DbConnection;
import QuizApp.dto.Admin;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author my pc
 */
public class AdminDao {
    private static PreparedStatement ps;
    static
    {
        try
        {
            ps=DbConnection.getConnection().prepareStatement("Select * from admin where email=? and password=?");
        }
        catch(SQLException sqle)
        {
            sqle.printStackTrace();
        }
    }
    public static boolean validateUser(Admin admin) throws SQLException
    {
        ps.setString(1, admin.getEmail());
        ps.setString(2, admin.getPassword());
        ResultSet rs=ps.executeQuery();
        if(rs.next())
            return true;
        return false;
    }
}
