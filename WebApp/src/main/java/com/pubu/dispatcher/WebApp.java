package com.pubu.dispatcher;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class WebApp extends AbstractAnnotationConfigDispatcherServletInitializer 
{

	@Override
	protected Class<?>[] getRootConfigClasses() 
	{
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() 
	{
		// TODO Auto-generated method stub
		return new Class<?>[]{WebAppConfig.class};
	}

	@Override
	protected String[] getServletMappings() 
	{
		// TODO Auto-generated method stub
		return new String[]{"/"};
	}
	
}
