package com.pojo;

// Generated Oct 4, 2018 1:52:59 PM by Hibernate Tools 3.4.0.CR1

/**
 * Addcrop generated by hbm2java
 */
public class Addcrop implements java.io.Serializable {

	private Integer cid;
	private String cropname;
	private String cropdetail;
	private String cropimage;
	private String cropseason;

	public Addcrop() {
	}

	public Addcrop(String cropname, String cropdetail, String cropimage, String cropseason) {
		this.cropname = cropname;
		this.cropdetail = cropdetail;
		this.cropimage = cropimage;
		this.cropseason = cropseason;
	}

	public Integer getCid() {
		return this.cid;
	}

	public void setCid(Integer cid) {
		this.cid = cid;
	}

	public String getCropname() {
		return this.cropname;
	}

	public void setCropname(String cropname) {
		this.cropname = cropname;
	}

	public String getCropdetail() {
		return this.cropdetail;
	}

	public void setCropdetail(String cropdetail) {
		this.cropdetail = cropdetail;
	}

	public String getCropimage() {
		return this.cropimage;
	}

	public void setCropimage(String cropimage) {
		this.cropimage = cropimage;
	}

	public String getCropseason() {
		return this.cropseason;
	}

	public void setCropseason(String cropseason) {
		this.cropseason = cropseason;
	}

}
