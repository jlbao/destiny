package com.destiny.app;

import java.util.LinkedList;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.destiny.bean.Person;

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

	@RequestMapping(value = "/messages", method = RequestMethod.GET)
	@ResponseBody
	public List<Person> getMessages() {
		List<Person> list = new LinkedList<Person>();
		list.add(new Person("Jialiang", 24));
		list.add(new Person("Wenyi", 24));
		list.add(new Person("Tianlun", 25));
		list.add(new Person("Dongyun", 23));
		list.add(new Person("Tom", 50));
		list.add(new Person("Snehal", 44));
		list.add(new Person("Arthur", 35));
		list.add(new Person("Maria", 25));
		return list;
	}
}
