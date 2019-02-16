package org.tp.ssm_tpzy.pojo;

import java.util.Date;
import java.util.Set;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Type {
     private int tid;//类型ID
     private String tname;//类型名称
     @JsonFormat(pattern="yyyy-MM-dd",timezone="GMT+8")
     private Date createTime;//创建时间
     @JsonFormat(pattern="yyyy-MM-dd",timezone="GMT+8")
     private Date updateTime;//修改时间
     private int is_delete;
     private Set<Test> test;
     
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	public int getIs_delete() {
		return is_delete;
	}
	public void setIs_delete(int is_delete) {
		this.is_delete = is_delete;
	}
	

	public Set<Test> getTest() {
		return test;
	}
	public void setTest(Set<Test> test) {
		this.test = test;
	}
	@Override
	public String toString() {
		return "Type [tid=" + tid + ", tname=" + tname + ", createTime=" + createTime + ", updateTime=" + updateTime
				+ ", is_delete=" + is_delete + ", test=" + test + "]";
	}

     
     
     
}
