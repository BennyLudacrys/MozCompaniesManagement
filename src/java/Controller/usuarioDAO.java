
package Controller;

import Mapeamento.usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;


public class usuarioDAO {
        Connection con;
    PreparedStatement pstm;
    
    public void cadastrar(usuario doc){
        String sql="insert into usuario (nome, email, password) values(?,?,?)";
            con = new connexaoBD().conexaoBD();
            
            try {
            pstm = con.prepareStatement(sql);
            pstm.setString(1, doc.getNome());
            pstm.setString(2, doc.getEmail());
            pstm.setString(3, doc.getPassword());
            
            pstm.execute();
            pstm.close();
        } catch (SQLException e) {
            
                JOptionPane.showMessageDialog(null, e);
            
        }
    }
    public void listarusuario() throws SQLException{
        con = new connexaoBD().conexaoBD();
        pstm = con.prepareStatement("select * from usuario");
        // executa um select
        ResultSet rs = pstm.executeQuery();
        // itera no ResultSet
        while (rs.next()) {
            String nome = rs.getString("nome");
            String email = rs.getString("email");
}
        rs.close();
        pstm.close();
        con.close();
    }
    
}
