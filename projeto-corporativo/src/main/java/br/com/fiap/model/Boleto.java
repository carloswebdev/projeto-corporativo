package br.com.fiap.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the boleto database table.
 * 
 */
@Entity
@NamedQuery(name="Boleto.findAll", query="SELECT b FROM Boleto b")
public class Boleto implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	@Column(name="codigo_banco")
	private int codigoBanco;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="data_documento")
	private Date dataDocumento;

	@Temporal(TemporalType.TIMESTAMP)
	private Date vencimento;

	//bi-directional many-to-one association to Pedido
	@ManyToOne
	private Pedido pedido;

	public Boleto() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCodigoBanco() {
		return this.codigoBanco;
	}

	public void setCodigoBanco(int codigoBanco) {
		this.codigoBanco = codigoBanco;
	}

	public Date getDataDocumento() {
		return this.dataDocumento;
	}

	public void setDataDocumento(Date dataDocumento) {
		this.dataDocumento = dataDocumento;
	}

	public Date getVencimento() {
		return this.vencimento;
	}

	public void setVencimento(Date vencimento) {
		this.vencimento = vencimento;
	}

	public Pedido getPedido() {
		return this.pedido;
	}

	public void setPedido(Pedido pedido) {
		this.pedido = pedido;
	}

}