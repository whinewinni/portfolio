package com.whine.winni.vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="board")
public class Board_vo {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int seq_no;
	
	@Column(name="title")
	private String title;
	
	@Column(name="content")
	private String content;
	
	@Column(name="date")
	private String date;
	
	@Column(name="hit")
	private int hit;
	
	@Column(name="id")
	private String id;
	
	@Column(name="password")
	private String password;
	
	public int getSeq_no() {
		return seq_no;
	}
	public void setSeq_no(int seq_no) {
		this.seq_no = seq_no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	@Override
	public String toString() {
		StringBuffer sb = new StringBuffer();
		sb.append("seq_no : ").append(seq_no).append("\n");
		sb.append("title : ").append(title).append("\n");
		sb.append("content : ").append(content).append("\n");
		sb.append("date : ").append(date).append("\n");
		sb.append("hit : ").append(hit).append("\n");
		sb.append("id : ").append(id).append("\n");
		sb.append("password : ").append(password).append("\n");
		
		return sb.toString();
	}
}
