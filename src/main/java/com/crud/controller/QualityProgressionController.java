package com.crud.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.crud.bean.A01M010_USER;
import com.crud.bean.Project;
import com.crud.service.QualityProgressionService;

@Controller
public class QualityProgressionController {
	
	@Autowired
	QualityProgressionService qualityProgressionService;
	
	@RequestMapping("/selectAll")
	@ResponseBody
	public List<A01M010_USER> selectAll(String userName) {
		return qualityProgressionService.a(userName);
	}
	
	@RequestMapping("/select")
	@ResponseBody
	public List<Project> select() {
		return qualityProgressionService.b();
	}
	
	@RequestMapping("/find")
	@ResponseBody
	public List<Project> find(String orderNm,String productSectNm,String productUserFullName,String processName) {
		return qualityProgressionService.c( orderNm,productSectNm, productUserFullName, processName);
	}
}
