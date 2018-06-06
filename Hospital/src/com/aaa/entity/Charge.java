package com.aaa.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Charge entity. @author MyEclipse Persistence Tools
 */

public class Charge implements java.io.Serializable {

	// Fields

	private Integer id;
	private Patients patients;
	private String fessName;
	private Integer charge;
	private Integer chargeable;
	private Integer realCharge;
	private Integer changes;
	private Set chargetypes = new HashSet(0);
	private Set particularses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Charge() {
	}

	/** minimal constructor */
	public Charge(Patients patients) {
		this.patients = patients;
	}

	/** full constructor */
	public Charge(Patients patients, String fessName, Integer charge, Integer chargeable, Integer realCharge,
			Integer changes, Set chargetypes, Set particularses) {
		this.patients = patients;
		this.fessName = fessName;
		this.charge = charge;
		this.chargeable = chargeable;
		this.realCharge = realCharge;
		this.changes = changes;
		this.chargetypes = chargetypes;
		this.particularses = particularses;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Patients getPatients() {
		return this.patients;
	}

	public void setPatients(Patients patients) {
		this.patients = patients;
	}

	public String getFessName() {
		return this.fessName;
	}

	public void setFessName(String fessName) {
		this.fessName = fessName;
	}

	public Integer getCharge() {
		return this.charge;
	}

	public void setCharge(Integer charge) {
		this.charge = charge;
	}

	public Integer getChargeable() {
		return this.chargeable;
	}

	public void setChargeable(Integer chargeable) {
		this.chargeable = chargeable;
	}

	public Integer getRealCharge() {
		return this.realCharge;
	}

	public void setRealCharge(Integer realCharge) {
		this.realCharge = realCharge;
	}

	public Integer getChanges() {
		return this.changes;
	}

	public void setChanges(Integer changes) {
		this.changes = changes;
	}

	public Set getChargetypes() {
		return this.chargetypes;
	}

	public void setChargetypes(Set chargetypes) {
		this.chargetypes = chargetypes;
	}

	public Set getParticularses() {
		return this.particularses;
	}

	public void setParticularses(Set particularses) {
		this.particularses = particularses;
	}

}