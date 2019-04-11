package com.clps.oas.sm.pojo;

import java.io.Serializable;

/** 
* @author  noah.zhou 
* @date 创建时间：2019年2月11日 上午10:40:00
* @des  Employee Entity
* @version 1.0 
* @parameter  
* @since  
* @return  
*/
public class Employee implements Serializable{
 
	private static final long serialVersionUID = 7789463003804607122L;

	private Integer employeeId;

    private String employeeName;

    private String employeeSex;

    private Integer employeeAge;

    private String employeePhone;

    private String employeeEmail;

    private String employeeAddress;

    private String employeeDepartment;

    private String employeePosition;

    private String employeePermission;

    private Integer isValid;

    public Employee() {
		super();
	}

	public Employee(Integer employeeId, String employeeName, String employeeSex, Integer employeeAge,
			String employeePhone, String employeeEmail, String employeeAddress, String employeeDepartment,
			String employeePosition, String employeePermission, Integer isValid) {
		super();
		this.employeeId = employeeId;
		this.employeeName = employeeName;
		this.employeeSex = employeeSex;
		this.employeeAge = employeeAge;
		this.employeePhone = employeePhone;
		this.employeeEmail = employeeEmail;
		this.employeeAddress = employeeAddress;
		this.employeeDepartment = employeeDepartment;
		this.employeePosition = employeePosition;
		this.employeePermission = employeePermission;
		this.isValid = isValid;
	}

	public Integer getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(Integer employeeId) {
        this.employeeId = employeeId;
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

    public String getEmployeeSex() {
        return employeeSex;
    }

    public void setEmployeeSex(String employeeSex) {
        this.employeeSex = employeeSex;
    }

    public Integer getEmployeeAge() {
        return employeeAge;
    }

    public void setEmployeeAge(Integer employeeAge) {
        this.employeeAge = employeeAge;
    }

    public String getEmployeePhone() {
        return employeePhone;
    }

    public void setEmployeePhone(String employeePhone) {
        this.employeePhone = employeePhone;
    }

    public String getEmployeeEmail() {
        return employeeEmail;
    }

    public void setEmployeeEmail(String employeeEmail) {
        this.employeeEmail = employeeEmail;
    }

    public String getEmployeeAddress() {
        return employeeAddress;
    }

    public void setEmployeeAddress(String employeeAddress) {
        this.employeeAddress = employeeAddress;
    }

    public String getEmployeeDepartment() {
        return employeeDepartment;
    }

    public void setEmployeeDepartment(String employeeDepartment) {
        this.employeeDepartment = employeeDepartment;
    }

    public String getEmployeePosition() {
        return employeePosition;
    }

    public void setEmployeePosition(String employeePosition) {
        this.employeePosition = employeePosition;
    }

    public String getEmployeePermission() {
        return employeePermission;
    }

    public void setEmployeePermission(String employeePermission) {
        this.employeePermission = employeePermission;
    }

    public Integer getIsValid() {
        return isValid;
    }

    public void setIsValid(Integer isValid) {
        this.isValid = isValid;
    }

	@Override
	public String toString() {
		return "Employee [employeeId=" + employeeId + ", employeeName=" + employeeName + ", employeeSex=" + employeeSex
				+ ", employeeAge=" + employeeAge + ", employeePhone=" + employeePhone + ", employeeEmail="
				+ employeeEmail + ", employeeAddress=" + employeeAddress + ", employeeDepartment=" + employeeDepartment
				+ ", employeePosition=" + employeePosition + ", employeePermission=" + employeePermission + ", isValid="
				+ isValid + "]";
	}
    
}