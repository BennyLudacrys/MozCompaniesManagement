package servlet;

import Controller.usuarioDAO;
import Mapeamento.usuario;
import java.awt.HeadlessException;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;


@WebServlet(name = "usuarioSERVLET", urlPatterns = {"/MozWorkers/cadastro"})
public class usuarioSERVLET extends HttpServlet {



 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
             String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        usuario u =new usuario();
        u.setNome(nome);
        u.setEmail(email);
        u.setPassword(password);
        
        usuarioDAO udao = new usuarioDAO();
        udao.cadastrar(u);
        
        JOptionPane.showMessageDialog(null, "cadastrado"); 
        } catch (HeadlessException e) {
           JOptionPane.showMessageDialog(null, e);  
        }
      
                
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
