package org.tp.ssm_tpzy.pojo;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class HyzxTest {
        private int  hyzxTestId;//行业资讯的编号
        private String hyzxTestName;//行业资讯内容
        private String hyzxTypeName;//行业资讯类型
        private String hyzxTestImg;//行业资讯的图片
        @JsonFormat(pattern="yyyy-MM-dd",timezone="GMT+8")
        private Date createTime;//创建时间
        @JsonFormat(pattern="yyyy-MM-dd",timezone="GMT+8")
        private Date updateTime;//修改时间
        private int is_delete; //是否已查看
		public int getHyzxTestId() {
			return hyzxTestId;
		}
		public void setHyzxTestId(int hyzxTestId) {
			this.hyzxTestId = hyzxTestId;
		}
		public String getHyzxTestName() {
			return hyzxTestName;
		}
		public void setHyzxTestName(String hyzxTestName) {
			this.hyzxTestName = hyzxTestName;
		}
		public String getHyzxTypeName() {
			return hyzxTypeName;
		}
		public void setHyzxTypeName(String hyzxTypeName) {
			this.hyzxTypeName = hyzxTypeName;
		}
		public String getHyzxTestImg() {
			return hyzxTestImg;
		}
		public void setHyzxTestImg(String hyzxTestImg) {
			this.hyzxTestImg = hyzxTestImg;
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
			return "HyzxTest [hyzxTestId=" + hyzxTestId + ", hyzxTestName=" + hyzxTestName + ", hyzxTypeName="
					+ hyzxTypeName + ", hyzxTestImg=" + hyzxTestImg + ", createTime=" + createTime + ", updateTime="
					+ updateTime + ", is_delete=" + is_delete + "]";
		}
        
        
 	  
}
