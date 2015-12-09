package br.com.fiap.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the rastreabilidade database table.
 * 
 */
@Entity
@NamedQuery(name="Rastreabilidade.findAll", query="SELECT r FROM Rastreabilidade r")
public class Rastreabilidade implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	@Temporal(TemporalType.TIMESTAMP)
	private Date data;

	//bi-directional many-to-one association to Pedido
	@ManyToOne
	private Pedido pedido;

	//bi-directional many-to-one association to Status
	@ManyToOne
	private Status status;

	public Rastreabilidade() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getData() {
		return this.data;
	}

	public void setData(Date data) {
		this.data = data;
	}

	public Pedido getPedido() {
		return this.pedido;
	}

	public void setPedido(Pedido pedido) {
		this.pedido = pedido;
	}

	public Status getStatus() {
		return this.status;
	}

	public void setStatus(Status status) {
		this.status = status;
	}

}