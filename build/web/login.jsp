<%@ page import ="java.sql.*" %>
<%
    try{
        String username = request.getParameter("username");   
        String password = request.getParameter("password");
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/scolarite?" + "user=root&password=");    
        PreparedStatement pst = conn.prepareStatement("select username,password from etudiant where username=? and password=?");
        pst.setString(1, username);
        pst.setString(2, password);
        ResultSet rs = pst.executeQuery();                        
        if(rs.next())   
        {
            session = request.getSession();
             session.setAttribute("user", username);
             response.sendRedirect("EspEtud.jsp");       

        }
        else
        {
             session = request.getSession();
             session.setAttribute("error", "Username / mot de passe erroné");
             response.sendRedirect("index.jsp");   
        }           
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
%>