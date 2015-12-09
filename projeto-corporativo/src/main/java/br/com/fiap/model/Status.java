package br.com.fiap.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the status database table.
 * 
 */
@Entity
@NamedQuery(name="Status.findAll", query="SELECT s FROM Status s")
public class Status implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	private String descricao;

	//bi-directional many-to-one association to Pedido
	@OneToMany(mappedBy="status")
	private List<Pedido> pedidos;

	//bi-directional many-to-one association to Rastreabilidade
	@OneToMany(mappedBy="status")
	private List<Rastreabilidade> rastreabilidades;

	public Status() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDescricao() {
		return this.descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public List<Pedido> getPedidos() {
		return this.pedidos;
	}

	public void setPedidos(List<Pedido> pedidos) {
		this.pedidos = pedidos;
	}

	public Pedido addPedido(Pedido pedido) {
		getPedidos().add(pedido);
		pedido.setStatus(this);

		return pedido;
	}

	public Pedido removePedido(Pedido pedido) {
		getPedidos().remove(pedido);
		pedido.setStatus(null);

		return pedido;
	}

	public List<Rastreabilidade> getRastreabilidades() {
		return this.rastreabilidades;
	}

	public void setRastreabilidades(List<Rastreabilidade> rastreabilidades) {
		this.rastreabilidades = rastreabilidades;
	}

	public Rastreabilidade addRastreabilidade(Rastreabilidade rastreabilidade) {
		getRastreabilidades().add(rastreabilidade);
		rastreabilidade.setStatus(this);

		return rastreabilidade;
	}

	public Rastreabilidade removeRastreabilidade(Rastreabilidade rastreabilidade) {
		getRastreabilidades().remove(rastreabilidade);
		rastreabilidade.setStatus(null);

		return rastreabilidade;
	}

}