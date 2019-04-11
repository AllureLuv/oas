package com.clps.oas.sm.dao;

import java.util.List;

import com.clps.oas.sm.pojo.Employee;
import com.clps.oas.util.paging.PagingVO;
/**
 * 
 * @desc: clps.oas
 * @author: noah.zhou
 * @createTime: 2019年1月28日 上午10:47:36
 * @version: v1.0
 */
public interface EmployeeMapper {

    int insert(Employee employee);

    /*int insertSelective(Employee record);*/

    /* Employee selectByPrimaryKey(Integer employeeId);*/
    List<Employee> queryAllEmployee();
    
    List<Employee> queryEmployeeByName(String employeename);

    /* int updateByPrimaryKeySelective(Employee record);*/

    int updateEmployee(Employee employee);
    
    int deleteEmployeeById(Integer employeeId);
    
    List<Employee> findByPaging(PagingVO pagingVO) throws Exception;
    
    int countByExample();
}