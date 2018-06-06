package com.aaa.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Applicationitem entity. @author MyEclipse Persistence Tools
 */

public class Applicationitem implements java.io.Serializable {

	// Fields

	private Integer id;
	private Applicationform applicationform;
	private String name;
	private Integer price;
	private String info;
	private Set applicationresults = new HashSet(0);

	// Constructors

	/** default constructor */
	public Applicationitem() {
	}

	/** minimal constructor */
	public Applicationitem(Applicationform applicationform) {
		this.applicationform = applicationform;
	}

	/** full constructor */
	public Applicationitem(Applicationform applicationform, String name, Integer price, String info,
			Set applicationresults) {
		this.applicationform = applicationform;
		this.name = name;
		this.price = price;
		this.info = info;
		this.applicationresults = applicationresults;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Applicationform getApplicationform() {
		return this.applicationform;
	}

	public void setApplicationform(Applicationform applicationform) {
		this.applicationform = applicationform;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getPrice() {
		return this.price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public String getInfo() {
		return this.info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public Set getApplicationresults() {
		return this.applicationresults;
	}

	public void setApplicationresults(Set applicationresults) {
		this.applicationresults = applicationresults;
	}

}