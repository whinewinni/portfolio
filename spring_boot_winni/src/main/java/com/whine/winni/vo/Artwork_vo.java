package com.whine.winni.vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "artwork")
public class Artwork_vo {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idx;
	
	@Column(name = "thumbnail")
	private String thumbnail;
	
	@Column(name = "imgfile")
	private String imgfile;
	
	@Column(name = "title")
	private String title;
	
	@Column(name = "date")
	private String date;
	
	@Column(name = "tool")
	private String tool;
	
	@Column(name = "description")
	private String description;

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	public String getImgfile() {
		return imgfile;
	}

	public void setImgfile(String imgfile) {
		this.imgfile = imgfile;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getTool() {
		return tool;
	}

	public void setTool(String tool) {
		this.tool = tool;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	
	public String toString() {
		StringBuffer sb=new StringBuffer();
		
		sb.append("idx : ").append(idx).append("\n");
		sb.append("thumbnail : ").append(thumbnail).append("\n");
		sb.append("imgfile : ").append(imgfile).append("\n");
		sb.append("title : ").append(title).append("\n");
		sb.append("date : ").append(date).append("\n");
		sb.append("tool : ").append(tool).append("\n");
		sb.append("description : ").append(description).append("\n");
		
		return sb.toString();
		
	}
	
	
	
	
	
}
