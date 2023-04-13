<%-- 
    Document   : BuyTest
    Created on : 5 Apr, 2023, 12:18:23 AM
    Author     : RAHEE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<html>
<head>
  <title>Product List</title>
</head>
<body>
  <h1>Product List</h1>
  
  <%
    Connection conn = null;
    PreparedStatement ps = null;
  
    ResultSet rs = null;
    
    try {
      
      Class.forName("oracle.jdbc.OracleDriver");
      conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/RAHEEDpdb1", "rah_muz", "ra123");

      
      String sql = "SELECT * FROM PRODUCT";
      ps=conn.prepareStatement(sql);
      rs = ps.executeQuery(sql);
  %>
  <%while(rs.next()){%>
  <div>
     
      <img src="<%=rs.getString("IMAGESRC") %>" width="200" height="200"/> 
      <h2><%=rs.getString("NAME") %> </h2>
      <p><%=rs.getString("DESCRIPTION") %>  </p>
      <p><%=rs.getString("PRICE") %>  </p>
  </div>
 
 <%}%>
 <%

      
    } catch (SQLException e) {
     out.print(e);
    } catch (ClassNotFoundException e) {
      out.print(e);
    } finally {
      
      if (rs != null) {
        try { rs.close(); } catch (SQLException e) {}
      }
      if (ps != null) {
        try { ps.close(); } catch (SQLException e) {}
      }
      if (conn != null) {
        try { conn.close(); } catch (SQLException e) {}
      }
    }
  %>
  <!--  
      while (rs.next()) {
        int productId = rs.getInt("ID");
        String name = rs.getString("NAME");
        String description = rs.getString("DESCRIPTION");
        String price = rs.getString("PRICE");
        String mrp = rs.getString("MRP");
        
        String imageSrc = rs.getString("IMAGESRC");
        String save = rs.getString("SAVINGS");
        
        
        
        // Display the product image and details
        out.println("<div>");
//        out.println("<img src=\"" + imageSrc + "\">");
        out.println("<img src=" + imageSrc +"\">");
        out.println("<h2>" + name + "</h2>");
        out.println("<p>" + description + "</p>");
        out.println("<p>Price: " + price + "</p>");
        
        out.println("</div>");
      }-->
</body>
</html

