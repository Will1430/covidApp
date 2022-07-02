package controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Usuario;
import model.UsuarioDAO;


@WebServlet(urlPatterns={"/login" })
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public login() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	
	@SuppressWarnings("unused")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		
		Usuario u = UsuarioDAO.buscarUsuarioPorEmail(email);
		
		boolean loginSucesso = false;
		
		if(u != null &&  u.getSenha().equals(senha)) {
			loginSucesso = true;
			
		
			HttpSession session = request.getSession();
			session.setAttribute("Logado", u);
			
			RequestDispatcher rd = request.getRequestDispatcher("pg-principal.jsp");
			rd.forward(request, response);
			
		} else {
			
			request.setAttribute("erro","E-mail/senha incorretos");
			
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}
	}

}
