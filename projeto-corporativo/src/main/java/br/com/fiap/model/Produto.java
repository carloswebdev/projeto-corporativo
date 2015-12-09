package br.com.fiap.model;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.util.List;


/**
 * The persistent class for the produto database table.
 * 
 */
@Entity
@NamedQuery(name="Produto.findAll", query="SELECT p FROM Produto p")
public class Produto implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	@Column(name="breve_descricao")
	private String breveDescricao;

	private String descricao;

	private String fabricante;

	private String nome;

	private BigDecimal preco;

	@Column(name="url_imagem_produto")
	private String urlImagemProduto;

	//bi-directional many-to-one association to ItemPedido
	@OneToMany(mappedBy="produto")
	private List<ItemPedido> itemPedidos;

	//bi-directional many-to-one association to ItensEstoque
	@OneToMany(mappedBy="produto")
	private List<ItensEstoque> itensEstoques;

	//bi-directional many-to-one association to CategoriaProduto
	@ManyToOne
	@JoinColumn(name="categoria_produto_id")
	private CategoriaProduto categoriaProduto;

	public Produto() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBreveDescricao() {
		return this.breveDescricao;
	}

	public void setBreveDescricao(String breveDescricao) {
		this.breveDescricao = breveDescricao;
	}

	public String getDescricao() {
		return this.descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getFabricante() {
		return this.fabricante;
	}

	public void setFabricante(String fabricante) {
		this.fabricante = fabricante;
	}

	public String getNome() {
		return this.nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public BigDecimal getPreco() {
		return this.preco;
	}

	public void setPreco(BigDecimal preco) {
		this.preco = preco;
	}

	public String getUrlImagemProduto() {
		return this.urlImagemProduto;
	}

	public void setUrlImagemProduto(String urlImagemProduto) {
		this.urlImagemProduto = urlImagemProduto;
	}

	public List<ItemPedido> getItemPedidos() {
		return this.itemPedidos;
	}

	public void setItemPedidos(List<ItemPedido> itemPedidos) {
		this.itemPedidos = itemPedidos;
	}

	public ItemPedido addItemPedido(ItemPedido itemPedido) {
		getItemPedidos().add(itemPedido);
		itemPedido.setProduto(this);

		return itemPedido;
	}

	public ItemPedido removeItemPedido(ItemPedido itemPedido) {
		getItemPedidos().remove(itemPedido);
		itemPedido.setProduto(null);

		return itemPedido;
	}

	public List<ItensEstoque> getItensEstoques() {
		return this.itensEstoques;
	}

	public void setItensEstoques(List<ItensEstoque> itensEstoques) {
		this.itensEstoques = itensEstoques;
	}

	public ItensEstoque addItensEstoque(ItensEstoque itensEstoque) {
		getItensEstoques().add(itensEstoque);
		itensEstoque.setProduto(this);

		return itensEstoque;
	}

	public ItensEstoque removeItensEstoque(ItensEstoque itensEstoque) {
		getItensEstoques().remove(itensEstoque);
		itensEstoque.setProduto(null);

		return itensEstoque;
	}

	public CategoriaProduto getCategoriaProduto() {
		return this.categoriaProduto;
	}

	public void setCategoriaProduto(CategoriaProduto categoriaProduto) {
		this.categoriaProduto = categoriaProduto;
	}

}