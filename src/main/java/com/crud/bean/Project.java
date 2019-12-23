package com.crud.bean;

public class Project {
	private int projectNo;
	private String orderNm;
	private String productSectNm;
	private String productUserFullName;
	private String processName;
	
	public int getProjectNo() {
		return projectNo;
	}
	public void setProjectNo(int projectNo) {
		this.projectNo = projectNo;
	}
	public String getOrderNm() {
		return orderNm;
	}
	public void setOrderNm(String orderNm) {
		this.orderNm = orderNm;
	}
	public String getProductSectNm() {
		return productSectNm;
	}
	public void setProductSectNm(String productSectNm) {
		this.productSectNm = productSectNm;
	}
	public String getProductUserFullName() {
		return productUserFullName;
	}
	public void setProductUserFullName(String productUserFullName) {
		this.productUserFullName = productUserFullName;
	}
	public String getProcessName() {
		return processName;
	}
	public void setProcessName(String processName) {
		this.processName = processName;
	}
}
