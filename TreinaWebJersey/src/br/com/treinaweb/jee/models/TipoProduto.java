package br.com.treinaweb.jee.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table (name = "TPR_TIPOS_PRODUTO")
public class TipoProduto {

	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	@Column (name = "TPR_ID")
	private int id;
	
	@Column (name = "TPR_NOME", nullable = false, length = 100)
	private String nome;

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

}
