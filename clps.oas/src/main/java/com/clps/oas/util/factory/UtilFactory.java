/**    
 * @Title: UtilFactory.java  
 * @Package com.clps.oas.util.factory  
 * @Description: 对外发布的工具工厂  
 * @author weigion.wu(吴跟强)    
 * @date  2018-05-21 10:46:38
 * @version V1.0    
 *//*
package com.clps.oas.util.factory;

import com.clps.oas.util.date.DateUtil;
import com.clps.oas.util.excel.ExcelUtil;
import com.clps.oas.util.excel.vo.Account;
import com.clps.oas.util.excel.vo.Department;
import com.clps.oas.util.excel.vo.Position;
import com.clps.oas.util.stringconversion.StringConversionUtil;
import com.clps.oas.util.tree.TreeUtil;


*//**
 * @ClassName: UtilFactory
 * @Description: 工具类工厂
 * @author weigion.wu
 * @date 2018-05-21 10:46:38
 *//*
public class UtilFactory {

	*//**
	 * 
	 * @Title: getInstanceOfDateUtil  
	 * @Description: 日期类工厂化
	 * @param @return 返回 DateUtil 
	 * @return DateUtil
	 * @throws
	 *//*
	public static DateUtil getInstanceOfDateUtil() {
		return new DateUtil();
	}
	
	*//**
	 * 
	 * @Title: getInstanceOfExcelUtilHandleAccountVo  
	 * @Description: 工厂化账户信息导入导出调用  
	 * @param @return    设定文件  
	 * @return ExcelUtil<Account>    返回类型  
	 * @throws
	 *//*
	public static ExcelUtil<Account> getInstanceOfExcelUtilHandleAccountVo(){
		return new ExcelUtil<Account>();
	}
	
	*//**
	 * 
	 * @Title: getInstanceOfExcelUtilHandleDepartmentVo 
	 * @Description: 工厂化部门信息导入导出调用    
	 * @param @return    设定文件  
	 * @return ExcelUtil<Department>    返回类型  
	 * @throws
	 *//*
	public static ExcelUtil<Department> getInstanceOfExcelUtilHandleDepartmentVo(){
		return new ExcelUtil<Department>();
	}

	*//**
	 * 
	 * @Title: getInstanceOfExcelUtilHandlePositionVo  
	 * @Description: 工厂化职位信息导入导出调用    
	 * @param @return    设定文件  
	 * @return ExcelUtil<Position>    返回类型  
	 * @throws
	 *//*
	public static ExcelUtil<Position> getInstanceOfExcelUtilHandlePositionVo(){
		return new ExcelUtil<Position>();
	}
	
	*//**
	 * 
	 * @Title: getInstanceOfStringConversionUtil  
	 * @Description: 字符类型工具类 字符类型的转换 字符的修改  
	 * @param @return    设定文件  
	 * @return StringConversionUtil    返回类型  
	 * @throws
	 *//*
	public static StringConversionUtil getInstanceOfStringConversionUtil() {
		return new StringConversionUtil();
	}
	
	*//**
	 * 
	 * @Title: getInstanceOfTreeUtil  
	 * @Description: 树形结构工具类  
	 * @param @return    设定文件  
	 * @return TreeUtil    返回类型  
	 * @throws
	 *//*
	public static TreeUtil getInstanceOfTreeUtil(){
		return new TreeUtil();
	}

}
*/



/**    
 * @Title: UtilFactory.java  
 * @Package com.clps.oas.util.factory  
 * @Description: 对外发布的工具工厂  
 * @author weigion.wu(吴跟强)    
 * @date  2018-05-21 10:46:38
 * @version V1.0    
 */
package com.clps.oas.util.factory;

import com.clps.oas.util.date.DateUtil;
import com.clps.oas.util.excel.ExcelUtil;
import com.clps.oas.util.excel.vo.AccountVo;
import com.clps.oas.util.excel.vo.DepartmentVo;
import com.clps.oas.util.excel.vo.DocumentVo;
import com.clps.oas.util.excel.vo.PositionVo;
import com.clps.oas.util.stringconversion.StringConversionUtil;
import com.clps.oas.util.tree.TreeUtil;


/**
 * @ClassName: UtilFactory
 * @Description: 工具类工厂
 * @author weigion.wu
 * @date 2018-05-21 10:46:38
 */
public class UtilFactory {

	/**
	 * 
	 * @Title: getInstanceOfDateUtil  
	 * @Description: 日期类工厂化
	 * @param @return 返回 DateUtil 
	 * @return DateUtil
	 * @throws
	 */
	public static DateUtil getInstanceOfDateUtil() {
		return new DateUtil();
	}
	
	/**
	 * 
	 * @Title: getInstanceOfExcelUtilHandleAccountVo  
	 * @Description: 工厂化账户信息导入导出调用  
	 * @param @return    设定文件  
	 * @return ExcelUtil<Account>    返回类型  
	 * @throws
	 */
	public static ExcelUtil<AccountVo> getInstanceOfExcelUtilHandleAccountVo(){
		return new ExcelUtil<AccountVo>();
	}
	
	/**
	 * 
	 * @Title: getInstanceOfExcelUtilHandleDepartmentVo 
	 * @Description: 工厂化部门信息导入导出调用    
	 * @param @return    设定文件  
	 * @return ExcelUtil<DepartmentVo>    返回类型  
	 * @throws
	 */
	public static ExcelUtil<DepartmentVo> getInstanceOfExcelUtilHandleDepartmentVo(){
		return new ExcelUtil<DepartmentVo>();
	}

	/**
	 * 
	 * @Title: getInstanceOfExcelUtilHandlePositionVo  
	 * @Description: 工厂化职位信息导入导出调用    
	 * @param @return    设定文件  
	 * @return ExcelUtil<Position>    返回类型  
	 * @throws
	 */
	public static ExcelUtil<PositionVo> getInstanceOfExcelUtilHandlePositionVo(){
		return new ExcelUtil<PositionVo>();
	}
	
	/**
	 * 
	 * @Title: getInstanceOfExcelUtilHandleDocumentVo  
	 * @Description: 工厂化文件信息导入导出调用  
	 * @param @return    设定文件  
	 * @return ExcelUtil<DocumentVo>    返回类型  
	 * @throws
	 */
	public static ExcelUtil<DocumentVo> getInstanceOfExcelUtilHandleDocumentVo(){
		return new ExcelUtil<DocumentVo>();
	}
	
	/**
	 * 
	 * @Title: getInstanceOfStringConversionUtil  
	 * @Description: 字符类型工具类 字符类型的转换 字符的修改  
	 * @param @return    设定文件  
	 * @return StringConversionUtil    返回类型  
	 * @throws
	 */
	public static StringConversionUtil getInstanceOfStringConversionUtil() {
		return new StringConversionUtil();
	}
	
	/**
	 * 
	 * @Title: getInstanceOfTreeUtil  
	 * @Description: 树形结构工具类  
	 * @param @return    设定文件  
	 * @return TreeUtil    返回类型  
	 * @throws
	 */
	public static TreeUtil getInstanceOfTreeUtil(){
		return new TreeUtil();
	}

}
