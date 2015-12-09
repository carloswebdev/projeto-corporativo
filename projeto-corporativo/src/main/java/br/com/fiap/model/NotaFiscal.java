package br.com.fiap.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the nota_fiscal database table.
 * 
 */
@Entity
@Table(name="nota_fiscal")
@NamedQuery(name="NotaFiscal.findAll", query="SELECT n FROM NotaFiscal n")
public class NotaFiscal implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	//bi-directional many-to-one association to Pedido
	@ManyToOne
	private Pedido pedido;

	public NotaFiscal() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Pedido getPedido() {
		return this.pedido;
	}

	public void setPedido(Pedido pedido) {
		this.pedido = pedido;
	}

}