package com.clps.oas.sm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/** 
* @description  this is des
* @author  noah.zhou 
* @date 创建时间：2019年1月8日 上午11:46:02 
* @version 1.0 
*/
@Controller
@RequestMapping(value = "/sm") 
public class DownloadController {

	@RequestMapping(value = "/showDownload")
	public String showUpload() {
		return "sm/listfile";// 返回添加权限页面
	}
}
