package org.nahuel.hibernate.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name="files")
@Table(name="files")
public class Files {
	@Id
	@Column(name="id")
	int id;
	@Column(name="file_name")
	String file_name;
	@Column(name="label")
	String label;
	@Column(name="caption")
	String caption;
	public Files() {
		
	}
	
	public Files(String file_name) {
		this.file_name = file_name;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	public String getCaption() {
		return caption;
	}
	public void setCaption(String caption) {
		this.caption = caption;
	}
	
}