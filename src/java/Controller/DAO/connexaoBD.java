
package Controller.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class connexaoBD {
      public Connection conexaoBD(){
        Connection con=null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url= "jdbc:mysql://localhost:3300/mozworker?user=root&password=";
            con=DriverManager.getConnection(url);
            
        } catch (ClassNotFoundException | SQLException e) {
           
        }
        return con;
    }
    
}
