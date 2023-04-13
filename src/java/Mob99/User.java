/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Mob99;

import java.io.IOException;
import java.io.PrintWriter;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author RAHEE
 */
public class User {
    public void login(HttpServletRequest request, HttpServletResponse response) throws IOException  {
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    
    PrintWriter out = response.getWriter();

    try {
       
        Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/RAHEEDpdb1", "rah_muz", "ra123");
        
        PreparedStatement stmt = conn.prepareStatement("SELECT * FROM USERS WHERE email=? AND upassword=?");
        stmt.setString(1, email);
        stmt.setString(2, password);
        
        
        ResultSet rs = stmt.executeQuery();
       
        if (rs.next()) {
            String fname = rs.getString("fname");
            response.sendRedirect("index.jsp");
            request.getSession().setAttribute("fname", fname);
        } else {
           response.setContentType("text/html");
            
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Incorrect username or password. Would you like to register?');");
            out.println("location='CreateAccount.jsp';");
            out.println("</script>");
            
        }
       
        rs.close();
        stmt.close();
        conn.close();
    } catch (SQLException | IOException ex) {
        
       out.println(ex);
    }
}

}
