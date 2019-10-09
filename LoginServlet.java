package br.com.web.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.web.dao.UsuarioDAO;
import br.com.web.model.Usuario;

@WebServlet("/login")
public class LoginServlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher;
	    String pagina = "";				    
	    
        // buscando os parâmetros no request        
        String login = request.getParameter("login");
        String senha = request.getParameter("senha");  
        
        UsuarioDAO uDAO = new UsuarioDAO();
        Usuario usuario = new Usuario();
        usuario.setLogin(login);
        usuario.setSenha(senha);
        
		try {
			if (uDAO.autenticado(usuario)) {
				HttpSession session = request.getSession();
				session.setAttribute("usuarioLogado", login);
				pagina = "/dashboard.jsp";
			} else {			
				request.setAttribute("cadastro", "Login ou password errados!");			
				pagina = "/index.jsp";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		dispatcher = getServletContext().getRequestDispatcher(pagina);
        dispatcher.forward(request, response);
        
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher;
	    String pagina = "";	
	    
	    HttpSession session = request.getSession(false);	    
        
		if (session.getAttribute("usuarioLogado") != null) {			
			pagina = "/dashboard.jsp";
		} else {			
			request.setAttribute("cadastro", "Você precisa logar no sistema!");			
			pagina = "/index.jsp";
		}
		
		dispatcher = getServletContext().getRequestDispatcher(pagina);
        dispatcher.forward(request, response);
		
		
	}

}
