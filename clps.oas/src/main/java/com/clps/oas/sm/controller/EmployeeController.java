package com.clps.oas.sm.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.clps.oas.common.ParamCommon;
import com.clps.oas.sm.pojo.Employee;
import com.clps.oas.sm.service.IEmployeeService;
import com.clps.oas.util.paging.PagingVO;

/** 
* @description  this is des
* @author  noah.zhou 
* @date 创建时间：2019年2月26日 下午5:43:11 
* @version 1.0 
*/
@Controller
@RequestMapping(value = "/sm") // 控制路径为项目名字加上"/sm"
public class EmployeeController {
	
	@Resource
	private IEmployeeService employeeService;// 实例化permissionService

	
	@RequestMapping(value = "/employeeList") // 控制路径为项目名字加上"/sm/employeeList"
	public String showEmployee(Model model, Integer page) throws Exception{
		List<Employee> employee = null;
		// 页码对象
		PagingVO pagingVO = new PagingVO();
		// 设置总页数
		pagingVO.setTotalCountPage(employeeService.countByExample());
		if (page == null || page == 0) {
			pagingVO.setToPage(1);
			employee = employeeService.findByPaging(1);
		} else {
			pagingVO.setToPage(page);
			employee = employeeService.findByPaging(page);
		}
		model.addAttribute("employees", employee);
		model.addAttribute("pagingVO", pagingVO);
		return "sm/employeelist";// 返回查询VO页面
	}
	
	@RequestMapping(value = "/showAddEmployee")
	public String showAddEmployee() {
		return "sm/employee_add";// 返回添加权限页面
	}
	
	@RequestMapping(value = "/addEmployee", method = RequestMethod.POST)
	public String addEmployee(Employee employee,Model model) { 
		if (employeeService.insert(employee) == Integer.valueOf(ParamCommon.ADD_SUCCESS)) {
			List<Employee> employeee = employeeService.queryAllEmployee();
			model.addAttribute("employees", employeee);
			return "sm/employeelist";// 返回查询VO页面
		}
		return "sm/fail.jsp";// 返回失败页面
	}
	
	@RequestMapping(value = "/delEmployee", method = RequestMethod.GET)
	public String delEmployee(@RequestParam("employeeId") Integer employeeId,Model model) { // 获取到permissionId的值作为此函数的参数值

		if(employeeService.deleteEmployeeById(employeeId)==Integer.valueOf(ParamCommon.DELETE_SUCCESS)){
			List<Employee> employee = employeeService.queryAllEmployee();
			model.addAttribute("employees", employee);
			return "sm/employeelist";// 返回查询VO页面
		}
		return "sm/fail.jsp";// 返回失败页面

	}
	
	@RequestMapping(value = "/employeeFindByName", method = { RequestMethod.POST })
	private String employeeFindByName(String employeename, Model model) throws Exception {

		List<Employee> employee = employeeService.queryEmployeeByName(employeename);

		model.addAttribute("employees", employee);
		return "sm/employeelist";
	}
	
	@RequestMapping(value = "/editEmployee", method = RequestMethod.GET)
	public String showUpdateemployee(@RequestParam("employeeId") Integer employeeId, Employee employee, Model model) {
		/*List<Employee> employee = employeeService.queryEmployeeById(employeename);
		model.addAttribute("employees", employee);*/
		return "sm/employee_update";// 返回更新页面
	}
	
	@RequestMapping(value = "/editEmployee", method = RequestMethod.POST)
	public String editEmployee(@RequestParam("employeeId") Integer employeeid,Employee employee,Model model) {
		if (employeeService.updateEmployee(employee)== Integer.valueOf(ParamCommon.UPDATE_SUCCESS)) {
			List<Employee> employeee = employeeService.queryAllEmployee();
			model.addAttribute("employees", employeee);
			return "sm/employeelist";// 返回查询VO页面
		}
		return "sm/fail";// 返回失败页面0
	}

}
