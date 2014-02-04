/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package enterprise.CT338.entity;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.persistence.PersistenceUnit;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityManager;
import javax.annotation.Resource;
import javax.transaction.UserTransaction;



/**
 *
 * @author Dave
 */
@WebServlet(name = "Login", urlPatterns = {"/LogIn"})
public class Login extends HttpServlet {

    
    @PersistenceUnit
    //The emf corresponding to 
    private EntityManagerFactory emf;  
    
    @Resource
    private UserTransaction utx;
    
   
        EntityManager em = null;
    
       // String username = "root";
       // String password = "password";
        
      
        
        Connection conn = null;
        Statement stmt;
        /*String url = "jdbc:mysql://danu2.it.nuigalway.ie:3306/mydb1121?zeroDateTimeBehaviour=convertToNull";
        String dbName = "mydb1121";
        String dbuserName= "mydb1121";
        String dbpassWord = "mydb112177";
        String driver = "com.mysql.jdbc.Driver";*/
        String msg = " ";
        String name;
        
    
    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    public void init(){
        
        
       /* try{
            Class.forName(driver).newInstance();
            conn = DriverManager.getConnection(url + dbName + dbuserName + dbpassWord);
            
       
        }
        catch(Exception e){

            e.printStackTrace();
        }
        
         
            
        }   */
        try
	{
		Class.forName("com.mysql.jdbc.Driver").newInstance();
	}
	catch (Exception ex)
	{
		System.out.println("Exception is : " + ex.toString() );
	}
    }
        
    
    
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         assert emf != null;  //Make sure injection went through correctly.
        response.setContentType("text/html;charset=UTF-8");
        
          String un = request.getParameter("email");
        String pw = request.getParameter("password");
        
      /*  try{
             String Query = "select * from Customer where Email = '" + un + "' and Password = '" + pw + "'";
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(Query);
            
            String uname = null;
            String pword = null;
            
            while(rs.next()){
                
                uname = rs.getString(3);
                pword = rs.getString(7);
            
            }
            response.setContentType("text/html");
         PrintWriter out = response.getWriter();
   
            if(un.equals(uname) && pw.equals(pword))
            {
             
                out.println("Login Successful");
                
            }
            else
            {
                out.println("Login Failed");
            }*/
            try
	{
		conn = DriverManager.getConnection("jdbc:mysql://danu2.it.nuigalway.ie/" 
		+ "mydb1121?user=mydb1121&password=mydb112177");
		stmt = conn.createStatement();
                ResultSet rs=stmt.executeQuery("select * from Customer where Email= '" + un+ "' and Password='" +pw+"'");
               
                if(rs.next())
                {
                 
                   response.sendRedirect("home.jsp");
                    //msg="Login successful";
                 }
         else{
             response.sendRedirect("login.jsp");
            }
        
           // response.setContentType("text/html");
        }
        catch(Exception ex){
            
            
        }
    }   
    
   



}
     
//        response.setContentType("text/html");
        // PrintWriter out = response.getWriter();
        // out.println(msg);

//        if(un.equals(username) && pw.equals(password)){
//            
//            msg = "hello " + username + "Your login was successful";
//        }
//        else{
//            
//              msg = "hello " + username + "Your login was successful";            
//        }
//        
//        response.setContentType("text/html");
//        out.println(msg );
        
  // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     */
  

    
  