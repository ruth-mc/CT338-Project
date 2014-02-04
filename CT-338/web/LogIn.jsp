<%-- 
    Document   : LogIn
    Created on : 21-Jan-2014, 15:28:05
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
          header
        </div>

        <div id="indexLeftColumn">
            
             <a href="subscribe.jsp">
            <span class="categoryLabelText">Subscribe</span>
             </a>
                   
        </div>

        <div id="indexRightColumn">     
            
            <h1>Please Log In To Access Site</h1>
             <form id="logInForm" action="LogIn" method="post">
                Username: <input type="text" name="email" size="15" /><br />
                <p></p>
                Password: <input type="password" name="password" size="15" /><br />
                <div align="center">
                <p><input type="submit" value="Login" /></p>
                </div>
</form>
                        
        </div>

        <div id="footer">
            footer
        </div>
    </div>
    </body>
</html>
