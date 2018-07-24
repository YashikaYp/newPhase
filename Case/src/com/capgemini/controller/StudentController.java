package com.capgemini.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.servlet.ModelAndView;
@Controller
public class StudentController {
@RequestMapping(value="/admissionForm.html",method=RequestMethod.GET)

public ModelAndView getAdmissionForm()
{
	ModelAndView mv=new ModelAndView("AdmissionForm");
	return mv;
}
@ModelAttribute
public void addCommonObjects(Model model1)
{
	model1.addAttribute("headerMsg", "WELCOME TO SKIT COLLEGE");
	
}

@RequestMapping(value="/submitAdmissionForm.html",method=RequestMethod.POST)
public ModelAndView submitAdmissionForm(@ModelAttribute("student1") Student student1,BindingResult result)
{
	//BindingResult checks if the user has entered any incorrect data ; it then binds the data
	if(result.hasErrors()) //if the input has errors ; admission form is loaded again
	{
			ModelAndView mv=new ModelAndView("AdmissionForm");
			return mv;
	}
	
	ModelAndView mv1=new ModelAndView("AdmissionSuccess");
	return mv1;
	
}

}
