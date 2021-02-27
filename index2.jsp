<%@page import="java.sql.*,java.util.*"%>
<%@page import="com.mysql.jdbc.Driver.*"%>
<%
String first_name=request.getParameter("id");
String last_name=request.getParameter("name");
String city_name=request.getParameter("country");

try
{
Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3307/ technocrats?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
            Statement st = conn.createStatement();
String id = request.getParameter("add");  
           if(id=="add"){
String id11 = request.getParameter("id1");  
String id2 = request.getParameter("id2");  
String id3= request.getParameter("id3");  
String id4= request.getParameter("id4");  
String id5= request.getParameter("id5");  
String id6 = request.getParameter("id6");  


                st.executeQuery("INSERT INTO customer_transaction(Transfer_Key, Account_Key, Transaction_Amount(in $), Transaction Type, Transaction_Origin/Destination, Transaction_Date) VALUES (id11,id2,id3,id4,id5,id6) ") ; 
                out.println("Insertion successful. ");
}
if(id=="delete"){
String id1 = request.getParameter("id1");  
st.executeQuery("DELETE FROM `customer_transaction` WHERE Transfer_Key==id1");
out.println("deletion successful. ");
}
if(id=="modify"){
String id11 = request.getParameter("id11");  
String id1 = request.getParameter("id1");  
String id2 = request.getParameter("id2");  
String id3= request.getParameter("id3");  
String id4= request.getParameter("id4");  
String id5= request.getParameter("id5");  
String id6 = request.getParameter("id6");  

  st.executeQuery("UPDATE `customer_transaction` SET `Transfer_Key`=id1,`Account_Key`=id2,`Transaction_Amount(in $)`=id3,`Transaction Type`=id4,`Transaction_Origin/Destination`=id5,`Transaction_Date`=id6 WHERE 'Transfer_Key'==id11;");
}
			

  
   }
catch(Exception e){
out.println(e);
}
finally{
}
       %>
