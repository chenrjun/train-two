package com.pubu.app;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component(value="hee")
public class spel {
	
	
	
	@Value("#{5}")
	private int equal;
	
	
	public String vas="sss";
	
	public String getequa(String values)
	{
		return values;
	}
	
}
