package br.com.fiap.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the estoque database table.
 * 
 */
@Entity
@NamedQuery(name="Estoque.findAll", query="SELECT e FROM Estoque e")
public class Estoque implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	private String endereco;

	//bi-directional many-to-one association to ItensEstoque
	@OneToMany(mappedBy="estoque")
	private List<ItensEstoque> itensEstoques;

	public Estoque() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEndereco() {
		return this.endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public List<ItensEstoque> getItensEstoques() {
		return this.itensEstoques;
	}

	public void setItensEstoques(List<ItensEstoque> itensEstoques) {
		this.itensEstoques = itensEstoques;
	}

	public ItensEstoque addItensEstoque(ItensEstoque itensEstoque) {
		getItensEstoques().add(itensEstoque);
		itensEstoque.setEstoque(this);

		return itensEstoque;
	}

	public ItensEstoque removeItensEstoque(ItensEstoque itensEstoque) {
		getItensEstoques().remove(itensEstoque);
		itensEstoque.setEstoque(null);

		return itensEstoque;
	}

}