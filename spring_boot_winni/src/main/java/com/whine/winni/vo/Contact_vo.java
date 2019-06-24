package com.whine.winni.vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="contact")
public class Contact_vo {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idx;
	
	@Column(name="content")
	private String content;
	
	@Column(name="date")
	private String date;

	
	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
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
	
	@Override
	public String toString() {
		StringBuffer sb=new StringBuffer();
		
		sb.append("idx = "+idx+"\n");
		sb.append("content = "+content+"\n");
		sb.append("date = "+date+"\n");
		
		return sb.toString();
		
	}

	
	
	
	

}
