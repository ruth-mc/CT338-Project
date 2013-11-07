
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author Ruth
 */
@Entity
@Table(name = "Customer")


public class Customer  {
  
   @Id
    @Column(name = "CustomerId")
    private String id;

    @Column(name = "Name")
    private String name;

    @Column(name = "Email")
    private String email;
            
    @Column(name = "PhoneNumber")
    private String phNo;

    @Column(name = "Age")
    private String age;
    
    public Customer() {
    }

    public Customer(String id, String name, String email, String phNo,
                    String age) {
        this.id = id;
        this.name = name;
        this.email  = email;
        this.phNo=phNo;
        this.age=age;
        
    }

    public String getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public String getEmail() {
        return this.email;
    }
     public String getPhone() {
        return this.phNo;
    }
     public String getAge() {
        return this.age;
    }

    
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     *
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
