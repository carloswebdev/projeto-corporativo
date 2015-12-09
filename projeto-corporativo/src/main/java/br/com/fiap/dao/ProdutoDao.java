package br.com.fiap.dao;

import java.util.List;

import javax.persistence.Query;

import br.com.fiap.model.Produto;

public class ProdutoDao extends Dao<Produto> {

	private static final long serialVersionUID = -6260262072166951914L;

	public ProdutoDao() {
		super(Produto.class);
	}

	/*
	 * Exemplo de metodo especifico
	 * 
	@SuppressWarnings("unchecked")
	public List<Disciplina> buscarDisciplinasPorCurso(Integer idCurso) {
		Query query = getEntityManager().createQuery(
				"FROM Disciplina WHERE curso.id = :idCurso");
		query.setParameter("idCurso", idCurso);

		return query.getResultList();
	}
*/
}
