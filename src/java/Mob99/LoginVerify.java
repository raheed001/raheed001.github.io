/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Mob99;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author RAHEE
 */
public class LoginVerify extends HttpServlet {

   private static final long serialVersionUID = 1L;
       
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the email and password from the request parameters
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            // Connect to the database
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/99mobiles", "root", "1234");

            // Check if the email and password match a user in the database
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM users WHERE email=? AND password=?");
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                response.sendRedirect("index.jsp");
               
            } else {
                response.sendRedirect("Login.jsp");
                
                
            }
        } catch (Exception e) {
            e.printStackTrace();
            
        }
    }
    
}


