package com.destiny.app;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/category")
public class CategoryController {
	private static final Logger logger = LoggerFactory
			.getLogger(CategoryController.class);

	@RequestMapping(value = "/hello", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		model.addAttribute("test", "helloworld");
		return "category";
	}

	@RequestMapping(value = "/messages", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public Map<String, Object> getMessages() {
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("hello", "test");
		return data;
	}
}
