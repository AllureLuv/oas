/**    
 * @Title: ExcelUtilTest.java  
 * @Package com.clps.oas.util.excel  
 * @Description: 工具类导入导出测试 
 * @author weigion.wu(吴跟强)    
 * @date  2018-05-14 14:17:07
 * @version V1.0    
 *//*
package com.clps.oas.util.excel;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.log4j.Logger;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.clps.oas.util.excel.vo.Department;
import com.clps.oas.util.excel.vo.Position;
import com.clps.oas.util.factory.UtilFactory;

*//**
 * 
 * @ClassName: ExcelUtilTest
 * @Description: 工具类导入导出测试
 * @author weigion.wu
 * @date 2018-05-14 14:17:07
 *
 *//*
public class ExcelUtilTest {

	private Logger logger = Logger.getLogger(ExcelUtilTest.class);

	@Before
	public void setUp() throws Exception {

	}

	@After
	public void tearDown() throws Exception {
	}

	// 测试导出DepartmentVo信息到excel中
	@Test
	public void testExportDepartmentVoToExcel() {

		ArrayList<Department> list = new ArrayList<Department>();
		Department department = new Department();
		department.setDepaNumber("1");
		department.setDepaName("人事部");
		department.setDepaFatherNumber("0");
		department.setDepaChildNumber("1");
		department.setDepaLevel("2");
		department.setDepaEmail("2422676183@qq.com");
		department.setDepaComment("good");

		list.add(department);
		String[] headers = { "部门编号", "部门名称", "父编号", "子编号", "部门等级", "部门邮箱", "部门描述" };

		OutputStream out = null;
		try {
			out = new FileOutputStream("src\\main\\webapp\\doc\\excel\\departmentVo.xls");
		} catch (FileNotFoundException e) {
			logger.error(e.getMessage());
		}

		UtilFactory.getInstanceOfExcelUtilHandleDepartmentVo().exportToExcel("部门信息", headers, list, out);
		logger.info("文件创建成功");
		Iterator<Department> its = list.iterator();
		while (its.hasNext()) {
			logger.info(its.next());
		}
	}

	// 测试从excel中导入Department信息
	@Test
	public void testImportDepartmentVoFromExcel() {

		List<Object> list = null;
		try {
			list = UtilFactory.getInstanceOfExcelUtilHandleDepartmentVo()
					.ImportFromExcel(new File("src\\main\\webapp\\doc\\excel\\departmentVo.xls"), 0);
		} catch (IOException e) {
			logger.error(e.getMessage());
		}

		Iterator<Object> its = list.iterator();
		while (its.hasNext()) {
			logger.info(its.next());
		}
	}

	// 测试导出PositionVo信息到excel中
	@Test
	public void testExportPositionVoToExcel() {

		ArrayList<Position> list = new ArrayList<Position>();
		Position position = new Position();
		position.setPositionId("1");
		position.setPositionName("Java工程师");
		position.setPositionDescription("good");
		position.setPositionLevel("2");
		position.setPositionDepartmentId("1");
		list.add(position);

		String[] headers = { "职位编号", "职位名称", "职位描述", "职位等级", "职位部门编号" };

		OutputStream out = null;
		try {
			out = new FileOutputStream("src\\main\\webapp\\doc\\excel\\positionVo.xls");
		} catch (FileNotFoundException e) {
			logger.error(e.getMessage());
		}

		UtilFactory.getInstanceOfExcelUtilHandlePositionVo().exportToExcel("职位信息", headers, list, out);
		logger.info("文件创建成功");
		Iterator<Position> its = list.iterator();
		while (its.hasNext()) {
			logger.info(its.next());
		}
	}

	// 测试从excel中导入PositionVo信息
	@Test
	public void testImportPositionVoFromExcel() {
		List<Object> list = null;
		try {
			list = UtilFactory.getInstanceOfExcelUtilHandlePositionVo()
					.ImportFromExcel(new File("src\\main\\webapp\\doc\\excel\\positionVo.xls"), 0);
			if (list.size() > 0) {
				for (int i = 0; i < list.size(); i++) {
					list.get(i);
					logger.info(list.get(i));
				}}
		} catch (IOException e) {
			logger.error(e.getMessage());
		}

		Iterator<Object> its = list.iterator();
		while (its.hasNext()) {
			logger.info(its.next());
		
		}
	}

}
*/