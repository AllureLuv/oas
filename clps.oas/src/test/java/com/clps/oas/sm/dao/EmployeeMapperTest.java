package com.clps.oas.sm.dao;


import java.util.Iterator;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.clps.oas.sm.pojo.Employee;
import com.clps.oas.sm.pojo.Permission;
import com.clps.oas.sm.pojo.Position;
import com.clps.oas.sm.vo.PermissionVO;
import com.clps.oas.util.mybatis.MyBatisUtil;
import com.clps.oas.util.paging.PagingVO;

/** 
* @description  this is des
* @author  noah.zhou 
* @date 创建时间：2019年2月26日 下午2:06:03 
* @version 1.0 
*/
public class EmployeeMapperTest {

	private SqlSessionFactory sf = null;
	private SqlSession session = null;
	private EmployeeMapper employeeDao = null;
	private List<Employee> employees = null;
	private Logger logger = Logger.getLogger(EmployeeMapperTest.class);
	@Before
	public void setUp() throws Exception {
		this.sf = MyBatisUtil.getSqlSessionFactory();
		this.session = sf.openSession();
		this.employeeDao = session.getMapper(EmployeeMapper.class);
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void testqueryallemployee() {
		try {
			this.employees = this.employeeDao.queryAllEmployee();
			logger.info("查询成功");
			Iterator<Employee> its = employees.iterator();
			while(its.hasNext()){
				logger.info(its.next());
			}
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("查询失败");
			session.rollback();
		}finally{
			session.commit();
			if(session !=null){
				session.close();
			}
		}
	}
	
	@Test
	public void testQueryEmployeeByName() {
		try {
			this.employees = this.employeeDao.queryEmployeeByName("李明");
			/*logger.info(employees);*/
			logger.info("查询成功");
			Iterator<Employee> its = employees.iterator();
			while (its.hasNext()) {
				logger.info(its.next());
			}
			session.commit();
		} catch (Exception e) {
			logger.error("查询失败");
			session.rollback();
		} finally {
			if (session != null) {
				session.close();
			}
		}

	}
	
	@Test
	public void testinsert() {
		Employee employee = new Employee();
		employee.setEmployeeId(2);
		employee.setEmployeeName("王刚");
		employee.setEmployeeSex("男");
		employee.setEmployeeAge(23);
		employee.setEmployeePhone("123456");
		employee.setEmployeeEmail("wanggang@qq.com");
		employee.setEmployeeAddress("上海");
		employee.setEmployeeDepartment("研发部");
		employee.setEmployeePosition("java开发工程师");
		employee.setEmployeePermission("一般");
		employee.setIsValid(1);
		logger.info("插入开始");
		try {
			int i = this.employeeDao.insert(employee);
			logger.info(i+"       ");
			if (i > 0) {
				logger.info("插入成功");
			}
		} catch (Exception e) {
			logger.error("插入失败");
			e.printStackTrace();
			session.rollback();
		} finally {
			session.commit();
			if (session != null) {
				session.close();
			}
		}
	}

	
	//测试Dao层根据ID删除权限的方法
		@Test
		public void testDeleteEmployeeById() {
				try {
					int i = this.employeeDao.deleteEmployeeById(2);
					if (i > 0) {
						logger.info("逻辑删除成功");
					}
				} catch (Exception e) {
					logger.error("逻辑删除失败");
					e.printStackTrace();
					session.rollback();
				} finally {
					session.commit();
					if (session != null) {
						session.close();
					}
				}
		}
		
		//测试Dao层更新权限信息的方法
		@Test
		public void testupdateEmployee() {
			Employee employee = new Employee();
			employee.setEmployeeId(2);
			employee.setEmployeeName("王刚");
			employee.setEmployeeSex("男");
			employee.setEmployeeAge(25);
			employee.setEmployeePhone("123456");
			employee.setEmployeeEmail("wanggang@qq.com");
			employee.setEmployeeAddress("上海");
			employee.setEmployeeDepartment("实施部");
			employee.setEmployeePosition("java开发工程师");
			employee.setEmployeePermission("一般");
			employee.setIsValid(1);
			try {
				int i = this.employeeDao.updateEmployee(employee);
				if (i > 0) {
					logger.info("更新成功");
				} else {
					logger.error("更新失败");
				}
				
			} catch (Exception e) {
				logger.error("更新失败");
				e.printStackTrace();
				session.rollback();
			} finally {
				session.commit();
				if (session != null) {
					session.close();
				}
			}
		}
		
		//测试Dao层查询所有VO权限信息的方法
				@Test
				public void testfindByPaging() {
						try {
							PagingVO pagingVO = new PagingVO();
							pagingVO.setToPage(1);
							this.employees = employeeDao.findByPaging(pagingVO);
							Iterator<Employee> its = employees.iterator();
							while (its.hasNext()) {
								logger.info(its.next());
							}
							session.commit();
						} catch (Exception e) {
							e.printStackTrace();
							session.rollback();
						} finally {
							if (session != null) {
								session.close();
							}
						}
				}
			//测试Dao层查询单条用户信息的方法
				@Test
				public void testcountByExample() {
						int i=employeeDao.countByExample();
						logger.info("数据库数据的条数："+i);
				}		
}
