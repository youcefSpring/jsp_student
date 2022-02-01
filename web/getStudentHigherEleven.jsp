<%@ page import ="java.sql.*" %>
<%
    try{
       
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/scolarite?" + "user=root&password=");    
        PreparedStatement pst = conn.prepareStatement("select * from etudiant where moyenne >= 11.5 ");
     
        ResultSet rs = pst.executeQuery();                        
        if(rs.next())   
        {
            session = request.getSession();
             session.setAttribute("rs", rs);
             response.sendRedirect("Rech.jsp");       

        }
        else
            response.sendRedirect("Rech.jsp");            
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
%>