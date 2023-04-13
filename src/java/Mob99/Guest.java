/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Mob99;

import java.io.IOException;
import static java.lang.System.out;
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
public class Guest {

    public void register(HttpServletRequest request, HttpServletResponse response) {
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String age = request.getParameter("age");
    String device = request.getParameter("device");
    String phno = request.getParameter("phno");
    String email = request.getParameter("email");
    String upassword = request.getParameter("password");
    String cpassword = request.getParameter("cpassword");
    int updateQuery = 0;
    PreparedStatement pstatement = null;
    Connection conn = null;
    try {
        Class.forName("oracle.jdbc.OracleDriver");

        String p = "ra123";
        conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/RAHEEDpdb1", "rah_muz", "ra123");
        
        boolean isRegistered = checkIfUserIsRegistered(email);

        if (isRegistered) {
            // Redirect user to login page or some other page
            response.sendRedirect("Login.jsp");
        } else {
            String queryString = "INSERT INTO users(fname,lname,age,device,phno,email,upassword,cpassword)VALUES(?,?,?,?,?,?,?,?)";
            
            pstatement = conn.prepareStatement(queryString);

            pstatement.setString(1, fname);
            pstatement.setString(2, lname);
            pstatement.setString(3, age);
            pstatement.setString(4, device);
            pstatement.setString(5, phno);
            pstatement.setString(6, email);
            pstatement.setString(7, upassword);
            pstatement.setString(8, cpassword);

            updateQuery = pstatement.executeUpdate();
            if (updateQuery != 0) {

                out.println("Data inserted successfully");
                request.getSession().setAttribute("fname", fname);
                response.sendRedirect("Login.jsp");

            } else {
                out.println("Data not inserted ");
                response.sendRedirect("CreateAccount.jsp");
            }
        }
    } catch (Exception e) {
        out.println("Unable to connect to database. " + e);

    } finally {
        try {
            conn.close();
            pstatement.close();
        } catch (SQLException ex) {
            out.println(ex);
        }

    }

}
    private boolean checkIfUserIsRegistered(String email) {
    boolean isRegistered = false;
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    try {
        Class.forName("oracle.jdbc.OracleDriver");
        conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/RAHEEDpdb1", "rah_muz", "ra123");
        String queryString = "SELECT email FROM users WHERE email=?";
        ps = conn.prepareStatement(queryString);
        ps.setString(1, email);
        rs = ps.executeQuery();
        if (rs.next()) {
            isRegistered = true;
        }
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        try {
            if (rs != null) {
                rs.close();
            }
            if (ps != null) {
                ps.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    return isRegistered;
}
}
