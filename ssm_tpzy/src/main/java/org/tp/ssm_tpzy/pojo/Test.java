package org.tp.ssm_tpzy.pojo;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Test {
         private int id;//产品编号
         private String name;//图片名称
         private String img;//产品图片
         private String mark;//图片详情
         private String product;//产品简介
         private String territory;//使用领域
         private String tvideo;//产品视频
         @JsonFormat(pattern="yyyy-MM-dd",timezone="GMT+8")
         private Date createTime;//创建时间
         @JsonFormat(pattern="yyyy-MM-dd",timezone="GMT+8")
         private Date updateTime;//修改时间
         private int is_delete; //是否删除
         private Type type;
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getImg() {
			return img;
		}
		public void setImg(String img) {
			this.img = img;
		}
		public String getMark() {
			return mark;
		}
		public void setMark(String mark) {
			this.mark = mark;
		}
		public String getProduct() {
			return product;
		}
		public void setProduct(String product) {
			this.product = product;
		}
		public String getTerritory() {
			return territory;
		}
		public void setTerritory(String territory) {
			this.territory = territory;
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
		public Type getType() {
			return type;
		}
		public void setType(Type type) {
			this.type = type;
		}
		
		public String getTvideo() {
			return tvideo;
		}
		public void setTvideo(String tvideo) {
			this.tvideo = tvideo;
		}
		@Override
		public String toString() {
			return "Test [id=" + id + ", name=" + name + ", img=" + img + ", mark=" + mark + ", product=" + product
					+ ", territory=" + territory + ", tvideo=" + tvideo + ", createTime=" + createTime + ", updateTime="
					+ updateTime + ", is_delete=" + is_delete + ", type=" + type + "]";
		}


	
}
