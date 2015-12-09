package br.com.fiap.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the blacklist database table.
 * 
 */
@Entity
@NamedQuery(name="Blacklist.findAll", query="SELECT b FROM Blacklist b")
public class Blacklist implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	private String cpf;

	public Blacklist() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCpf() {
		return this.cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

}