package com.pubu.app;

import java.util.List;

public interface SpittleRepository {
	
	public List<Spittle> findSpittles(long max,int count);
	
}
