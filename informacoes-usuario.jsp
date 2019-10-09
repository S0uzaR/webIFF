<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="br.com.web.model.Usuario"
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%  Usuario usuario = new Usuario();
	usuario.setEmail("renan@mail");
	usuario.setLogin("renan");
	//usuario = (Usuario) request.getSession().getAttribute("usuarioLogado");

	out.print("Informações sobre "+ usuario.getLogin());	
	out.print(" ");
	
	//if usuario admin
	//<a href="logout">Painel de administrador</a>
	%>

	<br>
	<br>
	<tr>
		<td>Login: <%=usuario.getLogin() %></td>
		<br>		
		<td>Email: <%=usuario.getEmail() %></td>			
		<br>
	</tr>
	<br>

	<a href="logout">Atualizar informações</a> 
</body>
</html>