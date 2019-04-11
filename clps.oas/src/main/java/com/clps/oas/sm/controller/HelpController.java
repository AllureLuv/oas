package com.clps.oas.sm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/** 
* @description  this is des
* @author  noah.zhou 
* @date 创建时间：2019年1月8日 上午10:09:55 
* @version 1.0 
*/
@Controller
@RequestMapping(value = "/sm") 
public class HelpController {
	
	@RequestMapping(value = "/showHelp")
	public String showHelp() {
		return "sm/help";// 返回添加权限页面
	}

}
