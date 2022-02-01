<%@ page import ="java.sql.*" %>
<%
    try{
       
            session = request.getSession();
             session.removeAttribute("user");
             response.sendRedirect("index.jsp");       
          
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
%>