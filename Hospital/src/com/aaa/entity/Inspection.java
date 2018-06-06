package com.aaa.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Inspection entity. @author MyEclipse Persistence Tools
 */

public class Inspection implements java.io.Serializable {

	// Fields

	private Integer id;
	private Patients patients;
	private String checkPoint;
	private String maininfo;
	private String goal;
	private String state;
	private Set offices = new HashSet(0);
	private Set inspectionitems = new HashSet(0);

	// Constructors

	/** default constructor */
	public Inspection() {
	}

	/** minimal constructor */
	public Inspection(Patients patients) {
		this.patients = patients;
	}

	/** full constructor */
	public Inspection(Patients patients, String checkPoint, String maininfo, String goal, String state, Set offices,
			Set inspectionitems) {
		this.patients = patients;
		this.checkPoint = checkPoint;
		this.maininfo = maininfo;
		this.goal = goal;
		this.state = state;
		this.offices = offices;
		this.inspectionitems = inspectionitems;
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

	public String getCheckPoint() {
		return this.checkPoint;
	}

	public void setCheckPoint(String checkPoint) {
		this.checkPoint = checkPoint;
	}

	public String getMaininfo() {
		return this.maininfo;
	}

	public void setMaininfo(String maininfo) {
		this.maininfo = maininfo;
	}

	public String getGoal() {
		return this.goal;
	}

	public void setGoal(String goal) {
		this.goal = goal;
	}

	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public Set getOffices() {
		return this.offices;
	}

	public void setOffices(Set offices) {
		this.offices = offices;
	}

	public Set getInspectionitems() {
		return this.inspectionitems;
	}

	public void setInspectionitems(Set inspectionitems) {
		this.inspectionitems = inspectionitems;
	}

}