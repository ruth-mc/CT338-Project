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
        <title>Create a Customer.</title>
    </head>
    <body>
        
        <h1>Enter Customer Details!</h1>
        <form id="createPersonForm" action="CreatePerson" method="post">
            <table>
                <tr><td>CustomerID:</td><td><input type="text" id = "id" name="id" /></td></tr>
                <tr><td>Name:</td><td><input type="text" id = "name" name="name" /></td></tr>
                <tr><td>Email:</td><td><input type="text" id = "email" name="email" /></td></tr>
                <tr><td>PhoneNumber:</td><td><input type="text" id = "phonenumber" name="phonenumber" /></td></tr>
               <tr><td>Age:</td><td><input type="text" id = "age" name="age" /></td></tr>                            
            </table>
             <input type="submit" id="CreateRecord" value="CreateRecord" />
        </form>
        <a href="ListPerson"><strong>Go to List of persons</strong></a>
    </body>
</html>
