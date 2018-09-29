package com.decoblog.www.stat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;



public class LoginInterceptor extends HandlerInterceptorAdapter{
	//주소창으로 강제적으로 로그인안하고 접속하는 경우 방지
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		System.out.println("낚아챔");
	
		HttpSession session = request.getSession();
		String loginNo = (String)session.getAttribute("loginNo");
		
		
		
		if(loginNo == null) {
			
			String contextPath = request.getContextPath();
			
			response.sendRedirect(contextPath+"/");
			return false;
		}
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
		System.out.println("낚아챔2");
		super.postHandle(request, response, handler, modelAndView);
	}
	
	
	
	
}
