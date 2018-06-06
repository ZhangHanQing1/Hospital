package com.aaa.entity;

/**
 * Chargetype entity. @author MyEclipse Persistence Tools
 */

public class Chargetype implements java.io.Serializable {

	// Fields

	private Integer id;
	private Charge charge;
	private String name;

	// Constructors

	/** default constructor */
	public Chargetype() {
	}

	/** minimal constructor */
	public Chargetype(Charge charge) {
		this.charge = charge;
	}

	/** full constructor */
	public Chargetype(Charge charge, String name) {
		this.charge = charge;
		this.name = name;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Charge getCharge() {
		return this.charge;
	}

	public void setCharge(Charge charge) {
		this.charge = charge;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

}