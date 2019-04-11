package com.clps.oas.sm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
 * @desc: clps.oas
 * @author: noah.zhou
 * @createTime: 2019年1月28日 上午10:47:36
 * @version: v1.0
 */
@Controller
@RequestMapping(value = "/sm") 
public class UploadController {
	@RequestMapping(value = "/showUpload")
	public String showUpload() {
		return "sm/upload";// 返回上传页面
	}
}
