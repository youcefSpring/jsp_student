<%@ page import="java.sql.*" %> 
<%
String name = request.getParameter("email").toString();
System.out.println(name);
String data ="";
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/scolarite", "root", "");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from etudiant where username='"+name+"'");
int count=0;
while(rs.next())
{

count++;
}

if(count>0)
{
data="Nom d'utilisateur existe d�ja!";
}
else
{
data="Nom d'utilisateur valide";
}
out.println(data);
System.out.println(data);
}
catch (Exception e) {
System.out.println(e);
}
%>