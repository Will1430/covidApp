package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DAO;
import model.Usuario;
import model.UsuarioDAO;


@WebServlet(urlPatterns={"/insert" })
public class insert extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DAO dao = new DAO();
	Usuario u = new Usuario();


    public insert() {
        super();
       
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			u.setNome(request.getParameter("nome"));
			u.setEmail(request.getParameter("email"));
			u.setCidade(request.getParameter("cidade"));
			u.setEstado(request.getParameter("estado"));
			u.setCep(request.getParameter("cep"));
			u.setSenha(request.getParameter("senha"));
			
			UsuarioDAO.inserirUsuario(u);
			
		}catch(Exception e) {
			System.out.println(e);
		}
		
		response.sendRedirect("index.jsp");
	}
}