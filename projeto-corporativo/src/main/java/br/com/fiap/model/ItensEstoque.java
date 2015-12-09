package br.com.fiap.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the itens_estoque database table.
 * 
 */
@Entity
@Table(name="itens_estoque")
@NamedQuery(name="ItensEstoque.findAll", query="SELECT i FROM ItensEstoque i")
public class ItensEstoque implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	private int quantidade;

	//bi-directional many-to-one association to Estoque
	@ManyToOne
	private Estoque estoque;

	//bi-directional many-to-one association to Produto
	@ManyToOne
	private Produto produto;

	public ItensEstoque() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getQuantidade() {
		return this.quantidade;
	}

	public void setQuantidade(int quantidade) {
		this.quantidade = quantidade;
	}

	public Estoque getEstoque() {
		return this.estoque;
	}

	public void setEstoque(Estoque estoque) {
		this.estoque = estoque;
	}

	public Produto getProduto() {
		return this.produto;
	}

	public void setProduto(Produto produto) {
		this.produto = produto;
	}

}