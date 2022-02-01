<%@ page import ="java.sql.*" %>
<%@ page import =" java.text.SimpleDateFormat" %>

<%
    try{
        int mat=Integer.parseInt(request.getParameter("mat"));
      
        String nom=request.getParameter("nom");
      String dateStr = request.getParameter("date");  
        SimpleDateFormat formater = new SimpleDateFormat("dd-MM-yyyy");
      Date ddate = formater.parse(dateStr);
        //Date ddate=Date.parseDate(request.getParameter("ddate")); 
        Float moyenne =Float.parseFloat(request.getParameter("moyenne"));
        String username = request.getParameter("username");   
        String password = request.getParameter("password");
        
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/scolarite?" + "user=root&password=");    
        PreparedStatement pst = conn.prepareStatement("insert into scolarite.etudiant(mat,nom,date,moyenne,username,password) values(?,?,?,?,?,?)");
        pst.setInt(1, mat);
        pst.setString(2, nom);
        pst.setDate(3, ddate);
        pst.setFloat(4, moyenne);
         pst.setString(5, username);
        pst.setString(6, password);
        int rs = pst.executeUpdate(); 
         if(rs != 0)   
        {
            response.sendRedirect("index.jsp"); 
        }
      
             
        
                  
      
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
%>