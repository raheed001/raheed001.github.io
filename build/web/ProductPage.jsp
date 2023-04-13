<%-- 
    Document   : ProductPage
    Created on : 4 Apr, 2023, 11:28:43 PM
    Author     : RAHEE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*" %>
<html>
<head>
    <title>Product Details</title>
</head>
<body>
    <h1>Product Details</h1>
    <%
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet resultSet = null;
        int productId = Integer.parseInt(request.getParameter("productId"));

        try {
             Class.forName("oracle.jdbc.OracleDriver");
                conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/RAHEEDpdb1", "rah_muz", "ra123");

            String sql = "SELECT * FROM PRODUCT WHERE PRODUCT_ID = ?";
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, productId);
            resultSet = stmt.executeQuery();

            if (resultSet.next()) {
    %>
                <table>
                    <tr>
                        <th>Product ID</th>
                        <th>Name</th>
                        <th>Price</th>
                        <th>MRP</th>
                        <th>Description</th>
                        <th>Savings</th>
                        <th>Image</th>
                    </tr>
                    <tr>
                        <td><%= resultSet.getInt("PRODUCT_ID") %></td>
                        <td><%= resultSet.getString("NAME") %></td>
                        <td><%= resultSet.getDouble("PRICE") %></td>
                        <td><%= resultSet.getDouble("PRODUCT_MRP") %></td>
                        <td><%= resultSet.getString("PRODUCT_DESCRIPTION") %></td>
                        <td><%= resultSet.getDouble("PRODUCT_SAVINGS") %></td>
                        <td><img src="<%= resultSet.getString("PRODUCT_IMAGE_SRC") %>" width="100" height="100"></td>
                    </tr>
                </table>
    <%
            } else {
    %>
                <p>Product not found</p>
    <%
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try { resultSet.close(); } catch (Exception e) { }
            try { stmt.close(); } catch (Exception e) { }
            try { conn.close(); } catch (Exception e) { }
        }
    %>
</body>
</html>

       
