package br.com.treinaweb.jee.models;

import java.io.Serializable;

public class Usuario implements Serializable{

	/**
	 * JavaBean
	 */
	private static final long serialVersionUID = -3641377187519320780L;
	
	private int id;
	private String nome;
	private String nomeUsuario;
	private String senha;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getNomeUsuario() {
		return nomeUsuario;
	}

	public void setNomeUsuario(String nomeUsuario) {
		this.nomeUsuario = nomeUsuario;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

}
