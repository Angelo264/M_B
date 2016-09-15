<%-- 
    Document   : TranactionValidate
    Created on : 07 Sep 2016, 10:50:12 AM
    Author     : Anthony D
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TRANSACTIONS</title>
    </head>
    <body>
         <h1 align='center' style="color:red">TransACTIONS</h1>
        <div></div>
        <form method="post" action="TransactionValidate.jsp" >
        <center>
            <h2 style="color:green">Transfer's </h2>
        </center>
        <table  align="center" >
            <tr>
                <td>Sender's Account:</td> <td><input type="text" name="Sacc" required="required"/></td>
            </tr>
            <tr>
                <td>Receiver's Account</td> <td><input type="text" name="Racc" required="required"/></td>
            </tr>
            <tr>
                <td>Amount</td> <td><input type="text" name="Amount" required="required"/></td>
            </tr> 
            
            <tr>
            <br>
         
          <div id="button">
                    <input type="Submit" id ='REG' name="Register">                   
          </div>
        </tr>
    </body>
</html>
<%
    try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3309/mataj_bank","root","264356"); 
    String Rname,Rsname;
    String ReceiverAcc = request.getParameter("Racc");
    
    String query2 = "SELECT * FROM tbl_personal_info WHERE acc = '"+ReceiverAcc+"'";
    PreparedStatement ps1 = con.prepareStatement(query2);
    ResultSet get2 = ps1.executeQuery();
    
    while(get2.next()){
    Rname   = get2.getString("name");
    Rsname  = get2.getString("surname");
    
    out.println(Rname);
    out.println(Rsname);
    
    }
    
    }catch(SQLException sqe){
    sqe.printStackTrace();
    }
%>