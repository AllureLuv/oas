package com.clps.oas.sm.vo;

import java.io.Serializable;
import java.util.Date;
/**
 * 
 * @desc: clps.oas
 * @author: noah.zhou
 * @createTime: 2019年1月28日 上午10:47:36
 * @version: v1.0
 */
public class DepartmentVo implements Serializable{

	private static final long serialVersionUID = -5171267498539222287L;

	// 部门编号
		private String depaNumber;

		// 部门名称
		private String depaName;

		// 上级部门编号
		private String depaFatherNumber;

		// 下级部门编号
		private String depaChildNumber;

		// 部门等级
		private String depaLevel;

		// 部门邮箱
		private String depaEmail;

		// 部门描述
		private String depaComment;

		// 部门创建人名
		private String depaCreateName;

		// 部门创建时间
		private Date depaCreateDatetime;

		// 部门更新时间
		private String depaUpdatedName;

		// 部门更新时间
		private Date depaUpdatedDatetime;

		public DepartmentVo() {
			super();
			// TODO Auto-generated constructor stub
		}

		public DepartmentVo(String depaNumber, String depaName, String depaFatherNumber, String depaChildNumber,
				String depaLevel, String depaEmail, String depaComment, String depaCreateName, Date depaCreateDatetime,
				String depaUpdatedName, Date depaUpdatedDatetime) {
			super();
			this.depaNumber = depaNumber;
			this.depaName = depaName;
			this.depaFatherNumber = depaFatherNumber;
			this.depaChildNumber = depaChildNumber;
			this.depaLevel = depaLevel;
			this.depaEmail = depaEmail;
			this.depaComment = depaComment;
			this.depaCreateName = depaCreateName;
			this.depaCreateDatetime = depaCreateDatetime;
			this.depaUpdatedName = depaUpdatedName;
			this.depaUpdatedDatetime = depaUpdatedDatetime;
		}

		public String getDepaNumber() {
			return depaNumber;
		}

		public void setDepaNumber(String depaNumber) {
			this.depaNumber = depaNumber;
		}

		public String getDepaName() {
			return depaName;
		}

		public void setDepaName(String depaName) {
			this.depaName = depaName;
		}

		public String getDepaFatherNumber() {
			return depaFatherNumber;
		}

		public void setDepaFatherNumber(String depaFatherNumber) {
			this.depaFatherNumber = depaFatherNumber;
		}

		public String getDepaChildNumber() {
			return depaChildNumber;
		}

		public void setDepaChildNumber(String depaChildNumber) {
			this.depaChildNumber = depaChildNumber;
		}

		public String getDepaLevel() {
			return depaLevel;
		}

		public void setDepaLevel(String depaLevel) {
			this.depaLevel = depaLevel;
		}

		public String getDepaEmail() {
			return depaEmail;
		}

		public void setDepaEmail(String depaEmail) {
			this.depaEmail = depaEmail;
		}

		public String getDepaComment() {
			return depaComment;
		}

		public void setDepaComment(String depaComment) {
			this.depaComment = depaComment;
		}

		public String getDepaCreateName() {
			return depaCreateName;
		}

		public void setDepaCreateName(String depaCreateName) {
			this.depaCreateName = depaCreateName;
		}

		public Date getDepaCreateDatetime() {
			return depaCreateDatetime;
		}

		public void setDepaCreateDatetime(Date depaCreateDatetime) {
			this.depaCreateDatetime = depaCreateDatetime;
		}

		public String getDepaUpdatedName() {
			return depaUpdatedName;
		}

		public void setDepaUpdatedName(String depaUpdatedName) {
			this.depaUpdatedName = depaUpdatedName;
		}

		public Date getDepaUpdatedDatetime() {
			return depaUpdatedDatetime;
		}

		public void setDepaUpdatedDatetime(Date depaUpdatedDatetime) {
			this.depaUpdatedDatetime = depaUpdatedDatetime;
		}

		@Override
		public String toString() {
			return "DepartmentVo [depaNumber=" + depaNumber + ", depaName=" + depaName + ", depaFatherNumber="
					+ depaFatherNumber + ", depaChildNumber=" + depaChildNumber + ", depaLevel=" + depaLevel
					+ ", depaEmail=" + depaEmail + ", depaComment=" + depaComment + ", depaCreateName=" + depaCreateName
					+ ", depaCreateDatetime=" + depaCreateDatetime + ", depaUpdatedName=" + depaUpdatedName
					+ ", depaUpdatedDatetime=" + depaUpdatedDatetime + "]";
		}
		

}
