package br.com.fiap.bean;

import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;
import javax.inject.Inject;

import br.com.fiap.dao.ProdutoDao;
import br.com.fiap.model.Produto;

@ManagedBean
@ViewScoped
public class ProdutoBean {

	@Inject
	private ProdutoDao produtoDao;

	private Produto produto;

	@PostConstruct
	public void init() {
		produto = new Produto();
	}

	public Produto getProduto() {
		return produto;
	}

	public void setProduto(Produto produto) {
		this.produto = produto;
	}

	public void add() {
		FacesContext context = FacesContext.getCurrentInstance();
		FacesMessage msg = new FacesMessage();

		try {
			produtoDao.adiciona(produto);
			msg.setDetail("Incluido com Sucesso");
			msg.setSeverity(FacesMessage.SEVERITY_INFO);
		} catch (Exception e) {
			msg.setDetail(e.getMessage());
			msg.setSeverity(FacesMessage.SEVERITY_ERROR);
		}

		context.addMessage(null, msg);
	}

	public List<Produto> listaTodos() {
		return produtoDao.listaTodos();
	}
}
