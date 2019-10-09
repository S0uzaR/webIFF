<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% out.print("Bem vindo "+ request.getSession().getAttribute("usuarioLogado"));	
	out.print(" ");
	
	//if usuario admin
	//<a href="logout">Painel de administrador</a>
	%>
	| <a href="profile">Perfil</a> | <a href="usuarios">Listar usuários</a> | <a href="logout">Desconectar</a>  
</body>
</html>