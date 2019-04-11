package com.clps.oas.sm.service;

import java.util.List;

import com.clps.oas.sm.pojo.Role;

/**
 * 
 * @desc: clps.oas
 * @author: noah.zhou
 * @createTime: 2019年1月28日 上午10:47:36
 * @version: v1.0
 */

public interface IRoleService {

	public String addRole(Role role);              //添加角色
	
	public List<Role> showRoles();                 //查询所有橘色
	
	public String  deleteRoleById(Integer roleId); //通过id删除橘色
	
	public String updateRole(Role role);           //更新角色
	
	public List<Role> showRolesByRoleId(Integer roleId);  //通过id查找
	
	public List<Role> showRolesByRoleName(String roleName);  //通过名字查找
	
}
