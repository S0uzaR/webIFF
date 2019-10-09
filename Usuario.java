package br.com.web.model;

public class Usuario {
	
	private int id;
	
	private String email;
	
	private String login;
	
	private String senha;
	
	public Usuario() {
		super();
	}

	
	
	public Usuario(int id, String email, String login, String senha) {
		super();
		this.id = id;
		this.email = email;
		this.login = login;
		this.senha = senha;
	}



	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getLogin() {
		return login;
	}



	public void setLogin(String login) {
		this.login = login;
	}



	public String getSenha() {
		return senha;
	}



	public void setSenha(String senha) {
		this.senha = senha;
	}	

}
