package com.clps.oas.sm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/** 
* @description  this is des
* @author  noah.zhou 
* @date 创建时间：2019年3月11日 下午3:54:57 
* @version 1.0 
*/
@Controller
@RequestMapping(value = "/sm")
public class ExplainController {

	@RequestMapping(value = "/showExplain")
	public String showExplain() {
		return "sm/explain";// 返回页面
	}
}
