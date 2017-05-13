package com.pubu.app;

 
import static org.junit.Assert.assertNotNull;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.expression.Expression;
import org.springframework.expression.ExpressionParser;
import org.springframework.expression.spel.standard.SpelExpressionParser;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;
import com.pubu.beans.common.CommonBean;
import com.pubu.beans.hibernate.HibernateBean;
import com.pubu.entity.CRUDtest;
import com.pubu.entity.MenuTree;
import com.sun.webkit.ContextMenu.ShowContext;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes={CommonBean.class,HibernateBean.class})
public class HibernateTest {
	
//	@Autowired
	@Value("#{sessionFactory}")
	private SessionFactory sessionFactory;
	
//	@Test
	@Transactional
	public void connectionTest(){
		
		Session session2 = sessionFactory.getCurrentSession();
		
		List<MenuTree> lists = session2.createCriteria(MenuTree.class).list();
		
//		List<MenuTree> lists = session2.createQuery("from MenuTree as menutree").list();
		
		System.out.println(lists.size());
		lists.forEach(s->{
			System.out.println(s.getNodeName());
		});
		
	}
	
	
//	@Test
	@Transactional
	public void crudtest(){
		
		CRUDtest cruDtest = new CRUDtest();
		cruDtest.setName("hello");
		
		Session session = sessionFactory.getCurrentSession();
//		Transaction tx = session.beginTransaction();
		 session.persist(cruDtest);
		 cruDtest.setName("bbs");
//		 session.flush();
//		System.out.println("1. Employee save called without transaction, id="+id);
//		session.flush();
		
	}
	
	@Test
	public void spelTest(){
		ExpressionParser parser = new SpelExpressionParser();
		Expression exp = parser.parseExpression("'Hello World'.concat('!')");
		String message = (String) exp.getValue();
		show(message);
	}
	
	
	
	
	
	private void show(String val)
	{
		System.out.println(val);
	}
	
}
