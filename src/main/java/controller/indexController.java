package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("index/")
public class indexController {
	
	private static Logger log = Logger.getLogger("indexController");
	
//	@Autowired
//	private IndexTest indexTest;
	
	@RequestMapping(value = "toindex")
	public ModelAndView toindex(HttpServletRequest request, HttpServletResponse response) {
		log.info("this is test------------");
		System.out.println("test to index----->>>");
//		modelAndView.setViewName("index2");
		
//		List<sequence> list = indexTest.getSequence();
		
		return new ModelAndView("index2");
	}
	
	@RequestMapping(value = "to_alipay_index")
	public ModelAndView toalipayindex(HttpServletRequest request, HttpServletResponse response) {
		log.info("this is test------------");
		System.out.println("test to_alipay_index----->>>");
//		modelAndView.setViewName("index2");
		
//		List<sequence> list = indexTest.getSequence();
		
		return new ModelAndView("alipay_index");
	}
}
