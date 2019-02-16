package org.tp.ssm_tpzy.pojo;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Message {
    
	 private int messId;//留言编号
	 private String messageName;//留言人姓名
	 private String messagePhone;//留言人电话
	 private String messageMark;//留言内容
	 @JsonFormat(pattern="yyyy-MM-dd",timezone="GMT+8")
     private Date createTime;//创建时间
     @JsonFormat(pattern="yyyy-MM-dd",timezone="GMT+8")
     private Date updateTime;//修改时间
     private int is_delete; //是否已查看
	public int getMessId() {
		return messId;
	}
	public void setMessId(int messId) {
		this.messId = messId;
	}
	public String getMessageName() {
		return messageName;
	}
	public void setMessageName(String messageName) {
		this.messageName = messageName;
	}
	public String getMessagePhone() {
		return messagePhone;
	}
	public void setMessagePhone(String messagePhone) {
		this.messagePhone = messagePhone;
	}
	public String getMessageMark() {
		return messageMark;
	}
	public void setMessageMark(String messageMark) {
		this.messageMark = messageMark;
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
	@Override
	public String toString() {
		return "Message [messId=" + messId + ", messageName=" + messageName + ", messagePhone=" + messagePhone
				+ ", messageMark=" + messageMark + ", createTime=" + createTime + ", updateTime=" + updateTime
				+ ", is_delete=" + is_delete + "]";
	}
     
     
}
