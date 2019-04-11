package com.clps.oas.sm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/** 
* @description  this is des
* @author  noah.zhou 
* @date 创建时间：2019年2月11日 下午4:03:00 
* @version 1.0 
*/
@Controller
@RequestMapping(value = "/sm")
public class ContactController {

	@RequestMapping(value = "/showContact")
	public String showContact() {
		return "sm/contact";// 返回页面
	}
}
