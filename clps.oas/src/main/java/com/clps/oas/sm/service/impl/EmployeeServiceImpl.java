package com.clps.oas.sm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.clps.oas.common.ParamCommon;
import com.clps.oas.sm.dao.EmployeeMapper;
import com.clps.oas.sm.pojo.Employee;
import com.clps.oas.sm.service.IEmployeeService;
import com.clps.oas.util.paging.PagingVO;

/** 
* @description  this is des
* @author  noah.zhou 
* @date 创建时间：2019年2月26日 下午4:18:46 
* @version 1.0 
*/
@Service("EmployeeServiceImpl")
public class EmployeeServiceImpl implements IEmployeeService {

	
	@Autowired
	EmployeeMapper employeeDao;//自动注入对象permissionDao
	@Override
	public int insert(Employee employee) {
		if(this.employeeDao.insert(employee)>0){
			return Integer.valueOf(ParamCommon.ADD_SUCCESS);
		}else{
			return Integer.valueOf(ParamCommon.ADD_FAILURE);
		}
		/**
		* @descirption
		* @param
		* @return
		*/
	}

	@Override
	public List<Employee> queryAllEmployee() {
		return this.employeeDao.queryAllEmployee();
		/**
		* @descirption
		* @param
		* @return
		*/
	}

	@Override
	public List<Employee> queryEmployeeByName(String employeename) {
		return this.employeeDao.queryEmployeeByName(employeename);
		/**
		* @descirption
		* @param
		* @return
		*/
	}

	@Override
	public int updateEmployee(Employee employee) {
		if(this.employeeDao.updateEmployee(employee)>0){
			return Integer.valueOf(ParamCommon.UPDATE_SUCCESS);
		}else{
			return Integer.valueOf(ParamCommon.UPDATE_FAILURE);
		}
		/**
		* @descirption
		* @param
		* @return
		*/
	}

	@Override
	public int deleteEmployeeById(Integer employeeId) {
		if(this.employeeDao.deleteEmployeeById(employeeId)>0){
			return Integer.valueOf(ParamCommon.DELETE_SUCCESS);
		}else{
			return Integer.valueOf(ParamCommon.DELETE_FAILURE);
		}
		/**
		* @descirption
		* @param
		* @return
		*/
	}

	@Override
	public List<Employee> findByPaging(Integer toPage) throws Exception {
		PagingVO pagingVO = new PagingVO();
        pagingVO.setToPage(toPage);
        List<Employee> list = employeeDao.findByPaging(pagingVO);
        return list;
		/**
		* @descirption
		* @param
		* @return
		*/
	}

	@Override
	public int countByExample() {
		return this.employeeDao.countByExample();
		/**
		* @descirption
		* @param
		* @return
		*/
	}

}
