package br.com.fiap.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;
import java.util.List;


/**
 * The persistent class for the pedido database table.
 * 
 */
@Entity
@NamedQuery(name="Pedido.findAll", query="SELECT p FROM Pedido p")
public class Pedido implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="data_criacao")
	private Date dataCriacao;

	//bi-directional many-to-one association to Boleto
	@OneToMany(mappedBy="pedido")
	private List<Boleto> boletos;

	//bi-directional many-to-one association to ItemPedido
	@OneToMany(mappedBy="pedido")
	private List<ItemPedido> itemPedidos;

	//bi-directional many-to-one association to NotaFiscal
	@OneToMany(mappedBy="pedido")
	private List<NotaFiscal> notaFiscals;

	//bi-directional many-to-one association to Cliente
	@ManyToOne
	private Cliente cliente;

	//bi-directional many-to-one association to Status
	@ManyToOne
	private Status status;

	//bi-directional many-to-one association to Rastreabilidade
	@OneToMany(mappedBy="pedido")
	private List<Rastreabilidade> rastreabilidades;

	public Pedido() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getDataCriacao() {
		return this.dataCriacao;
	}

	public void setDataCriacao(Date dataCriacao) {
		this.dataCriacao = dataCriacao;
	}

	public List<Boleto> getBoletos() {
		return this.boletos;
	}

	public void setBoletos(List<Boleto> boletos) {
		this.boletos = boletos;
	}

	public Boleto addBoleto(Boleto boleto) {
		getBoletos().add(boleto);
		boleto.setPedido(this);

		return boleto;
	}

	public Boleto removeBoleto(Boleto boleto) {
		getBoletos().remove(boleto);
		boleto.setPedido(null);

		return boleto;
	}

	public List<ItemPedido> getItemPedidos() {
		return this.itemPedidos;
	}

	public void setItemPedidos(List<ItemPedido> itemPedidos) {
		this.itemPedidos = itemPedidos;
	}

	public ItemPedido addItemPedido(ItemPedido itemPedido) {
		getItemPedidos().add(itemPedido);
		itemPedido.setPedido(this);

		return itemPedido;
	}

	public ItemPedido removeItemPedido(ItemPedido itemPedido) {
		getItemPedidos().remove(itemPedido);
		itemPedido.setPedido(null);

		return itemPedido;
	}

	public List<NotaFiscal> getNotaFiscals() {
		return this.notaFiscals;
	}

	public void setNotaFiscals(List<NotaFiscal> notaFiscals) {
		this.notaFiscals = notaFiscals;
	}

	public NotaFiscal addNotaFiscal(NotaFiscal notaFiscal) {
		getNotaFiscals().add(notaFiscal);
		notaFiscal.setPedido(this);

		return notaFiscal;
	}

	public NotaFiscal removeNotaFiscal(NotaFiscal notaFiscal) {
		getNotaFiscals().remove(notaFiscal);
		notaFiscal.setPedido(null);

		return notaFiscal;
	}

	public Cliente getCliente() {
		return this.cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public Status getStatus() {
		return this.status;
	}

	public void setStatus(Status status) {
		this.status = status;
	}

	public List<Rastreabilidade> getRastreabilidades() {
		return this.rastreabilidades;
	}

	public void setRastreabilidades(List<Rastreabilidade> rastreabilidades) {
		this.rastreabilidades = rastreabilidades;
	}

	public Rastreabilidade addRastreabilidade(Rastreabilidade rastreabilidade) {
		getRastreabilidades().add(rastreabilidade);
		rastreabilidade.setPedido(this);

		return rastreabilidade;
	}

	public Rastreabilidade removeRastreabilidade(Rastreabilidade rastreabilidade) {
		getRastreabilidades().remove(rastreabilidade);
		rastreabilidade.setPedido(null);

		return rastreabilidade;
	}

}