<%@ page import ="java.sql.*" %>
<%@ page import =" java.text.SimpleDateFormat" %>
<%@ page import ="java.util.Date" %>
<%
    try{
        int mat=Integer.parseInt(request.getParameter("mat"));
      
        String nom=request.getParameter("nom");
        
    // Date date_1= new SimpleDateFormat("dd/MM/yyyy").parse(request.getParameter("ddate"));  
     // java.sql.Date ddate = new java.sql.Date(date_1.getTime());
     
        String ddate=request.getParameter("ddate"); 
        Float moyenne =Float.parseFloat(request.getParameter("moyenne"));
        String username = request.getParameter("username");   
        String password = request.getParameter("password");
        
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/scolarite?" + "user=root&password=");    
        PreparedStatement pst = conn.prepareStatement("insert into scolarite.etudiant(mat,nom,date,moyenne,username,password) values(?,?,?,?,?,?)");
        pst.setInt(1, mat);
        pst.setString(2, nom);
        pst.setString(3, ddate);
        pst.setFloat(4, moyenne);
         pst.setString(5, username);
        pst.setString(6, password);
        int rs = pst.executeUpdate(); 
         if(rs != 0)   
        {
             session = request.getSession();
             session.setAttribute("error", "Enregistrement avec succès ");
            response.sendRedirect("index.jsp"); 
        }
      
             
        
                  
      
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
%>