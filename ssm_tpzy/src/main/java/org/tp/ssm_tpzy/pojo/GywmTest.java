package org.tp.ssm_tpzy.pojo;


import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class GywmTest {
         private int gywmTestId;
         private String gywmTestName;
         private String gywmTypeName;
         private String gywmTestImg;
         @JsonFormat(pattern="yyyy-MM-dd",timezone="GMT+8")
         private Date createTime;//创建时间
         @JsonFormat(pattern="yyyy-MM-dd",timezone="GMT+8")
         private Date updateTime;//修改时间
         private int is_delete; //是否已查看
		public int getGywmTestId() {
			return gywmTestId;
		}
		public void setGywmTestId(int gywmTestId) {
			this.gywmTestId = gywmTestId;
		}
		public String getGywmTestName() {
			return gywmTestName;
		}
		public void setGywmTestName(String gywmTestName) {
			this.gywmTestName = gywmTestName;
		}
		public String getGywmTypeName() {
			return gywmTypeName;
		}
		public void setGywmTypeName(String gywmTypeName) {
			this.gywmTypeName = gywmTypeName;
		}
		public String getGywmTestImg() {
			return gywmTestImg;
		}
		public void setGywmTestImg(String gywmTestImg) {
			this.gywmTestImg = gywmTestImg;
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
			return "Gywm [gywmTestId=" + gywmTestId + ", gywmTestName=" + gywmTestName + ", gywmTypeName="
					+ gywmTypeName + ", gywmTestImg=" + gywmTestImg + ", createTime=" + createTime + ", updateTime="
					+ updateTime + ", is_delete=" + is_delete + "]";
		}
         
         
}
