package com.clps.oas.sm.service;

import java.util.List;

import com.clps.oas.sm.pojo.Employee;

/** 
* @description  this is des
* @author  noah.zhou 
* @date 创建时间：2019年2月26日 下午4:14:05 
* @version 1.0 
*/
public interface IEmployeeService {
	
	int insert(Employee employee);

    List<Employee> queryAllEmployee();
    
    List<Employee> queryEmployeeByName(String employeename);

    int updateEmployee(Employee employee);
    
    int deleteEmployeeById(Integer employeeId);
    
    List<Employee> findByPaging(Integer toPage) throws Exception;
    
    int countByExample();
}
