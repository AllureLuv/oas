package com.clps.oas.sm.service;

import java.util.List;

import com.clps.oas.sm.pojo.Permission;
import com.clps.oas.sm.vo.PermissionVO;

/** 
* @description this is IPermissionService
* @author  noah.zhou 
* @date 创建时间：2018年5月11日 上午10:40:00 
* @version 1.0 
*/
public interface IPermissionService {

	
	/**
	* @descirption 根据permissionId逻辑删除权限
	* @param permissionId
	* @return 如果返回值大于0则成功，反之失败
	*/
    String deletePermissionById(Integer permissionId);
   
    /**
	* @descirption 根据permissionId逻辑删除VO权限
	* @param permissionId
	* @return 如果返回值大于0则成功，反之失败
	*/
    String deletePermissionVOById(Integer permissionId);
    
    /**
	* @descirption 插入权限
	* @param record
	* @return 如果返回值大于0则成功，反之失败
	*/
    String addPermission(Permission record);
    
    /**
   	* @descirption 插入VO权限
   	* @param record
   	* @return 如果返回值大于0则成功，反之失败
   	*/
    String addPermissionVO(PermissionVO record);
    
    /**
	* @descirption 根据permissionId查询单条权限信息
	* @param permissionId
	* @return 
	*/
    List<Permission> queryPermissionById(Integer permissionId);
    
    /**
	* @descirption 更新权限
	* @param record
	* @return 如果返回值大于0则成功，反之失败
	*/
    String updatePermission(Permission record);
    
    /**
	* @descirption 更新VO权限
	* @param permissionvo
	* @return 如果返回值大于0则成功，反之失败
	*/
    String updatePermissionVO(PermissionVO permissionvo);
    
    /**
	* @descirption 查询所有权限
	* @param 
	* @return 
	*/
    List<Permission> queryAllPermissions();
    
    /**
	* @descirption 查询所有VO权限
	* @param 
	* @return 
	*/
    List<PermissionVO> queryAllPermissionVO();
    
    /**
	 * 
	 * @param toPage
	 * @return
	 * @throws Exception 
	 */
	List<PermissionVO> findByPaging(Integer toPage) throws Exception;
	
	/**
	 * 
	 * countPositions:() 
	 * @author Noah
	 * @return 
	 * @since JDK 1.8
	 */
	int countByExample();
}
