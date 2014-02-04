<%-- 
    Document   : CreateCustomer
    Created on : 07-Nov-2013, 12:04:36
    Author     : Dave
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
   <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="css/web_design.css">
    <title>The Movie Website Project</title>
    </head>
    <body>
        <div id="main">
        <div id="header">
        CT-338 
        </div>

        <div id="indexLeftColumn">
           <p></p>
             <a href="CreateCustomer.jsp">
            <span class="categoryLabelText">Register</span>
             </a>
             <p></p>
             <a href="ListPerson">
            <span class="categoryLabelText">List Customers</span>
             </a>
                   
        </div>

        <div id="indexRightColumn">
        <h1>Enter Customer Details!</h1>
        <form id="createPersonForm" action="CreateCustomer" method="post">
            <table>
                      
               <tr><td>Name:</td><td><input type="text" id = "name" name="name" /></td></tr>
                <tr><td>Email:</td><td><input type="text" id = "email" name="email" /></td></tr>
                <tr><td>PhoneNumber:</td><td><input type="text"  id = "phonenumber" name="phonenumber" /></td></tr>
               <tr><td>Age:</td><td><input type="text"  id = "age" name="age" /></td></tr>  
               <tr><td>Subscription:</td><td><input type="text"  id = "subscription" name="subscription" /></td></tr>  
               <tr><td>Password:</td><td><input type="password"  id = "password" name="password" /></td></tr>  
            </table>
            <p></p>
            
            <input type="submit" id="CreateRecord" value="CreateRecord" />   
           
             </div>

        <div id="footer">
            footer
        </div>
    </div>
         </form>
                     
    </body>
</html>
