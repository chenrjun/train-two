package com.pubu.app;

import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes={spel.class})
public class GeneralTest {
	
	
	@Value("#{hee.getequa(hee.vas)}")
	private String cc;
	
	@Test
	public void SpittleTest(){
//		List<Spittle> expectedSpittles = createSpittleList(20);
//		SpittleRepository mockRepository = mock(SpittleRepository.class);
//		when(mockRepository.findSpittles(Long.MAX_VALUE, 20)).thenReturn(expectedSpittles);
//		spel ss = new spel();
		System.out.println(cc);
		
		
	}
	
	private List<Spittle> createSpittleList(int count)
	{
		List<Spittle> spittles = new ArrayList<>();
		for(int i =0;i<count;i++)
		{
			spittles.add(new Spittle("Spittle" + i, new Date()));
		}
		
		return spittles;
	}
	
	
}
