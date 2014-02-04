<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : ListPerson
    Created on : 10-Nov-2013, 20:28:34
    Author     : Dave
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        
       <h1>List of Persons currently in Database</h1>
       

<table id="CustomerListTable" border="3">
<tr >
    <th bgcolor=>ID</th>
    <th bgcolor=>Name</th>
    <th bgcolor=>Email</th>
    <th bgcolor=>Phone Number</th>
    <th bgcolor=>Age</th>
    <th bgcolor=>Subscription</th>
   
</tr>
<c:forEach var="customer" begin="0" items="${requestScope.customerList}">
<tr>
    <td>${customer.getId()}&nbsp;&nbsp;</td> 
    <td>${customer.getName()}&nbsp;&nbsp;</td> 
    <td>${customer.getEmail()}&nbsp;&nbsp;</td> 
     <td>${customer.getPhone()}&nbsp;&nbsp;</td> 
    <td>${customer.getAge()}&nbsp;&nbsp;</td> 
     <td>${customer.getSubscription()}&nbsp;&nbsp;</td> 
</tr> 

</c:forEach>

</table>
<a href="CreateCustomer.jsp"><strong>Create new Person Record</strong></a>
    </body>
</html>
