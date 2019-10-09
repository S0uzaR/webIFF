<!DOCTYPE html>
<html>
<body>
	<h1>Registrar usuário</h1>
	<hr />
	<form action="registraUsuario" method="post">
		Email: <input name="email" /><br /> 
		Login: <input name="login" /><br /> 
		Senha: <input name="senha" /><br /> 		
		
		<input type="submit" value="Cadastrar" />
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

