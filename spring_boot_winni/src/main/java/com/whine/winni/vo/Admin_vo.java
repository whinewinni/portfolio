package com.whine.winni.vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Admin")
public class Admin_vo {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idx;
	
	@Column(name="id")
	private String id;
	
	@Column(name="pwd")
	private String pwd;
	
	@Column(name="name")
	private String name;

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String toString() {
		StringBuffer sb=new StringBuffer();
		
		sb.append("idx : ").append(idx).append("/n");
		sb.append("id : ").append(id).append("/n");
		sb.append("pwd : ").append(pwd).append("/n");
		sb.append("name : ").append(name).append("/n");
		
		return sb.toString();
		
	}
	
}
