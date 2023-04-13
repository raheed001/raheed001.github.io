/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Mob99;

import java.sql.*;


/**
 *
 * @author RAHEE
 */
public class LoginCheck  {
  


    public boolean insertUser(String fname, String lname, String age, String device, String phno, String email, String upassword, String cpassword) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        boolean success = false;
        try {
            // Load the Oracle JDBC driver
            Class.forName("oracle.jdbc.driver.OracleDriver");

            // Connect to the database
            conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/RAHEEDpdb1", "rah_muz", "ra123");

            // Prepare the SQL statement
            String sql = "INSERT INTO userdata (fname, lname, age, device, phno, email, upassword, cpassword) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, fname);
            pstmt.setString(2, lname);
            pstmt.setString(3, age);
            pstmt.setString(4, device);
            pstmt.setString(5, phno);
            pstmt.setString(6, email);
            pstmt.setString(7, upassword);
            pstmt.setString(8, cpassword);

            // Execute the SQL statement
            int rowsInserted = pstmt.executeUpdate();
            if (rowsInserted > 0) {
                System.out.println("A new user was inserted successfully!");
                success = true;
            }
        } catch (Exception e) {
            System.out.println("Error inserting user: " + e.getMessage());
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (Exception e) {
                System.out.println("Error closing database connection: " + e.getMessage());
            }
        }
        return success;
    }
}




