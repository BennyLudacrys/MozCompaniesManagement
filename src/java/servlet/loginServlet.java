package servlet;

import Controller.DAO.usuarioDAO;
import Mapeamento.usuario;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;


@WebServlet(name="loginServlet", urlPatterns={"/View/login"})
public class loginServlet extends HttpServlet {
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        JOptionPane.showMessageDialog(null, "cadastrado");
        
    } 
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
       
       String email =request.getParameter("email");
       String password = request.getParameter("password");
       
 //       listarusuario u = usuarioDAO.listarusuario();
//            
//            boolean loginSucesso = false;
//            
//          if(u !=null && u.getPassword().equals(password)){
//              loginSucesso = true;
//          }
//          
//          if (loginSucesso){
//              
//              //autenticacao
//              HttpSession session = request.getSession();
//              session.setAttribute("usuarioLogado", u);
//            
        RequestDispatcher rd = request.getRequestDispatcher("/View/homepage.jsp");
        rd.forward(request, response);  
//         } else{
//              //informar o usuario que deu erro
//              request.setAttribute("erro", "E-mail ou senha incorretos");
//              RequestDispatcher rd = request.getRequestDispatcher("/Mozworkers/login.html");
//              rd.forward(request, response);
//          }

      
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
