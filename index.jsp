<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<body>
	<h1>Logar no Sistema</h1>
	<hr />
	<form action="login" method="post">
		Login: <input name="login" /><br /> 
		Senha: <input name="senha" type="password" /><br /> 				
		
		<input type="submit" name="Logar" value="Logar" />
		<input type="submit" formaction="registraUsuario" name ="Registrar" value="Registrar" />
	</form>	
	
	<% String cadastro = (String) request.getAttribute("cadastro");
		System.out.println("Entrou na pagina: "+ cadastro);		
		if(cadastro != null){
			out.println(cadastro);
			System.out.println(cadastro);
		}	
	%>

		
</body>
</html>