package org.tp.ssm_tpzy.pojo;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class UserInfo {
    private int uid;//用户ID
    private String loginName;//登录名称
    private String loginPwd;//登录密码
    private String userName;//用户姓名
    private String userPhone;//用户电话
    @JsonFormat(pattern="yyyy-MM-dd",timezone="GMT+8")
    private Date createTime;//创建时间
    @JsonFormat(pattern="yyyy-MM-dd",timezone="GMT+8")
    private Date updateTime;//修改时间
    private int is_delete; //是否删除
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getLoginName() {
		return loginName;
	}
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	public String getLoginPwd() {
		return loginPwd;
	}
	public void setLoginPwd(String loginPwd) {
		this.loginPwd = loginPwd;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
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
		return "UserInfo [uid=" + uid + ", loginName=" + loginName + ", loginPwd=" + loginPwd + ", userName=" + userName
				+ ", userPhone=" + userPhone + ", createTime=" + createTime + ", updateTime=" + updateTime
				+ ", is_delete=" + is_delete + "]";
	}

    
    
    
}
