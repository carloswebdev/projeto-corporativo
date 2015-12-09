package br.com.fiap.model;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;


/**
 * The persistent class for the politica_credito database table.
 * 
 */
@Entity
@Table(name="politica_credito")
@NamedQuery(name="PoliticaCredito.findAll", query="SELECT p FROM PoliticaCredito p")
public class PoliticaCredito implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	private byte blacklist;

	@Column(name="cliente_base")
	private byte clienteBase;

	@Column(name="divida_com_empresa")
	private byte dividaComEmpresa;

	private byte resultado;

	private byte spc;

	@Column(name="valor_produto")
	private BigDecimal valorProduto;

	@Column(name="valor_produto_comparacao")
	private String valorProdutoComparacao;

	public PoliticaCredito() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public byte getBlacklist() {
		return this.blacklist;
	}

	public void setBlacklist(byte blacklist) {
		this.blacklist = blacklist;
	}

	public byte getClienteBase() {
		return this.clienteBase;
	}

	public void setClienteBase(byte clienteBase) {
		this.clienteBase = clienteBase;
	}

	public byte getDividaComEmpresa() {
		return this.dividaComEmpresa;
	}

	public void setDividaComEmpresa(byte dividaComEmpresa) {
		this.dividaComEmpresa = dividaComEmpresa;
	}

	public byte getResultado() {
		return this.resultado;
	}

	public void setResultado(byte resultado) {
		this.resultado = resultado;
	}

	public byte getSpc() {
		return this.spc;
	}

	public void setSpc(byte spc) {
		this.spc = spc;
	}

	public BigDecimal getValorProduto() {
		return this.valorProduto;
	}

	public void setValorProduto(BigDecimal valorProduto) {
		this.valorProduto = valorProduto;
	}

	public String getValorProdutoComparacao() {
		return this.valorProdutoComparacao;
	}

	public void setValorProdutoComparacao(String valorProdutoComparacao) {
		this.valorProdutoComparacao = valorProdutoComparacao;
	}

}