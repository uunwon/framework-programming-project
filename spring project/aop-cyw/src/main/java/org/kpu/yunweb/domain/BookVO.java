package org.kpu.yunweb.domain;

import org.springframework.web.multipart.MultipartFile;

//도서 value object 파일

public class BookVO {
	
	private String id;
	private String author;
	private String title;
	private int price;
	private MultipartFile img;
	
    public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}

	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}

	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}

	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}

	public MultipartFile getImg() {
		return img;
	}
	public void setImg(MultipartFile img) {
		this.img = img;
	}
}