package com.clps.oas.sm.service.impl;

import java.util.Iterator;

import org.apache.log4j.Logger;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.clps.oas.sm.pojo.Employee;
import com.clps.oas.sm.service.IEmployeeService;
import com.clps.oas.util.spring.SpringTestBase;

/** 
* @description  this is des
* @author  noah.zhou 
* @date 创建时间：2019年2月26日 下午4:34:08 
* @version 1.0 
*/
public class EmployeeServiceImplTest extends SpringTestBase{

	@Autowired
	private IEmployeeService ies;
	private Logger logger = Logger.getLogger(EmployeeServiceImplTest.class);

	@Before
	public void setUp() throws Exception {
	}

	@After
	public void tearDown() throws Exception {
	}

	// 测试Service层查询所有权限的方法
	@Test
	public void testQueryAllemployees() {
		Iterator<Employee> its = ies.queryAllEmployee().iterator();
		while (its.hasNext()) {
			logger.info(its.next());
		}
		logger.info("查找所有成功");
	}
	

	// 测试Service层查询单条权限的方法
	@Test
	public void testQueryemployeeByName() {
		Iterator<Employee> its = ies.queryEmployeeByName("李明").iterator();
		while (its.hasNext()) {
			System.out.println(its.next());
		}
		logger.info("查找单条数据成功");
	}

	// 测试插入权限方法
	@Test
	public void testInsert() {
		Employee employee = new Employee();
		employee.setEmployeeId(3);
		employee.setEmployeeName("张强");
		employee.setEmployeeSex("男");
		employee.setEmployeeAge(23);
		employee.setEmployeePhone("123456");
		employee.setEmployeeEmail("zhangqiang@qq.com");
		employee.setEmployeeAddress("苏州");
		employee.setEmployeeDepartment("研发部");
		employee.setEmployeePosition("java开发工程师");
		employee.setEmployeePermission("一般");
		employee.setIsValid(1);
		try {
			Integer flag = ies.insert(employee);
			logger.info(flag);
		} catch (Exception e) {
			logger.error("插入失败");
			e.printStackTrace();
		}
	}

	// 测试删除根据ID逻辑删除权限的方法
	@Test
	public void testDeleteEmployeeById() {
		try {
			Integer flag = ies.deleteEmployeeById(2);
			logger.info(flag);
		} catch (Exception e) {
			logger.error("service delete fail!");
			e.printStackTrace();
		}
	}
	
	// 测试更新用户的方法
	@Test
	public void testUpdateEmployee() {
		Employee employee = new Employee();
		employee.setEmployeeId(2);
		employee.setEmployeeName("王刚");
		employee.setEmployeeSex("男");
		employee.setEmployeeAge(30);
		employee.setEmployeePhone("123456");
		employee.setEmployeeEmail("wanggang@qq.com");
		employee.setEmployeeAddress("上海");
		employee.setEmployeeDepartment("实施部");
		employee.setEmployeePosition("java开发工程师");
		employee.setEmployeePermission("高级");
		employee.setIsValid(1);
		try {
			Integer flag = ies.updateEmployee(employee);
			logger.info(flag);
		} catch (Exception e) {
			logger.error("service update faliure!");
			e.printStackTrace();
		}
	}
	
	
		@Test
		public void testCountPositions() {
			logger.info(ies.countByExample());
		}

		@Test
		public void testFindByPaging() throws Exception {
			logger.info(ies.findByPaging(1));
		}
}
