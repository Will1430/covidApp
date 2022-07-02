package model;

public class Usuario {
	

	private int id;
	private String nome;
	private String email;
	private String cidade;
	private String estado;
	private String cep;
	private String senha;
	
	
	

	public Usuario() {
		
	}


	public Usuario(String nome, String email, String cidade, String estado, String cep, String senha) {
		super();

		this.nome = nome;
		this.email = email;
		this.cidade = cidade;
		this.estado = estado;
		this.cep = cep;
		this.senha = senha;
	}
		
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCidade() {
		return cidade;
	}
	public void setCidade(String cidade) {
		this.cidade = cidade;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	public String getCep() {
		return cep;
	}
	public void setCep(String cep) {
		this.cep = cep;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	
}

