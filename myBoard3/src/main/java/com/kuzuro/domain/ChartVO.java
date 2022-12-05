package com.kuzuro.domain;

public class ChartVO {
	
	/* 
	userId    varchar2(30)     not null,
    useDate     date           not null,
    smile      number          default 0,
    sad        number          default 0,
    angry      number          default 0,
    surprise   number          default 0,
    */
	
	 private String userId;
	 private String useDate;
	 private int smile;
	 private int sad;
	 private int angry;
	 private int surprise;

	 public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getDate() {
		return useDate;
	}
	public void setDate(String date) {
		this.useDate = date;
	}
	public int getSmile() {
		return smile;
	}
	public void setSmile(int smile) {
		this.smile = smile;
	}
	public int getSad() {
		return sad;
	}
	public void setSad(int sad) {
		this.sad = sad;
	}
	public int getAngry() {
		return angry;
	}
	public void setAngry(int angry) {
		this.angry = angry;
	}
	public int getSurprise() {
		return surprise;
	}
	public void setSurprise(int surprise) {
		this.surprise = surprise;
	}
	
}