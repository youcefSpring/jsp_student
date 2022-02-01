<%@ page import ="java.sql.*" %>
<%
    try{
       
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/scolarite?" + "user=root&password=");    
        PreparedStatement pst = conn.prepareStatement("select mat,nom,date,moyenne from etudiant ");
     
        ResultSet rs = pst.executeQuery();                        
        if(rs.next())   
        {
            session = request.getSession();
             session.setAttribute("rs", rs);
             response.sendRedirect("Aff.jsp");       

        }
        else
          response.sendRedirect("Aff.jsp");             
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
%>