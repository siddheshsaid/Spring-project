package org.example.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class HomeController {


	@RequestMapping(value = {"/", "/home"})
	public ModelAndView test(HttpServletResponse response) throws IOException {
		return new ModelAndView("home");
	}

	@RequestMapping(value = "/register")
	public RedirectView register(HttpServletRequest request, HttpServletResponse response) {
		String name = request.getParameter("full-name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String confirmpassword=request.getParameter("confirm-password");
		String interest=request.getParameter("interests");
		String size=request.getParameter("size");
		String newscheckbox=request.getParameter("newsletter-checkbox");
		String agreementcheckbox=request.getParameter("agreement-checkbox");







		HttpSession session=request.getSession();
		session.setAttribute("rname",name);
		session.setAttribute("remail",email);
		session.setAttribute("rpassword",password);
		session.setAttribute("rconfirmpassword",confirmpassword);
		session.setAttribute("rinterest",interest);
		session.setAttribute("rsize",size);
		session.setAttribute("rnewscheckbox",newscheckbox);
		session.setAttribute("ragreementcheckbox",agreementcheckbox);





		RedirectView redirectView=new RedirectView();


//		ModelAndView view = new ModelAndView();
//		view.addObject("Rname", name);
//		view.addObject("Remail", email);
//		view.addObject("Rpassword", password);
//		view.setViewName("loginsuccess");
		redirectView.setUrl("home");
		return redirectView;
	}

	@RequestMapping(value = "/login")
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response) {

		String lEmail=request.getParameter("lusername");
		String lPassword=request.getParameter("lpassword");


		if (lEmail.equals("test@inovantsolutions.com") && lPassword.equals("123456") ) {
			return new ModelAndView("loginsuccess");

		} else {
			ModelAndView view = new ModelAndView();
			view.addObject("errormessage","Email id or password is invalid");
			view.setViewName("home");
			System.out.print("Bye");
			return view;
		}

		}

    }





