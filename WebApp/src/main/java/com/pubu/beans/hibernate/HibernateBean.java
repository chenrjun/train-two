package com.pubu.beans.hibernate;

import java.util.Properties; 

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.pubu.beans.common.CommonBean;
import com.pubu.entity.MenuTree;

@Configuration
@EnableTransactionManagement
public class HibernateBean {

	@Bean(name="sessionFactory")
	@Autowired
	@Qualifier(value="dataSource-mysql")
//	@Value("#{dataSource-mysql}")
	public LocalSessionFactoryBean sessionFactory(DataSource dataSource) {

		LocalSessionFactoryBean localSessionFactoryBean = new LocalSessionFactoryBean();
		localSessionFactoryBean.setDataSource(dataSource);
//		localSessionFactoryBean.setAnnotatedPackages("com.pubu.beans.common");
//		localSessionFactoryBean.setAnnotatedClasses(MenuTree.class);
		localSessionFactoryBean.setPackagesToScan(new String[] { "com.pubu.entity" });
		localSessionFactoryBean.setHibernateProperties(hibernateProperties());

		return localSessionFactoryBean;
	}

	// Configuration Hibernate properties
	private Properties hibernateProperties() {
		Properties properties = new Properties();
		properties.put("hibernate.dialect", "org.hibernate.dialect.MySQLDialect");
		properties.put("hibernate.show_sql", true);
		properties.put("hibernate.format_sql", true);
//		properties.put("hibernate.current_session_context_class", "thread");
		return properties;
	}
	
	
	@Bean
	@Autowired(required=true)
	@Qualifier(value="sessionFactory")
	public HibernateTransactionManager hibernateTransactionManager(SessionFactory sessionFactory) {
		HibernateTransactionManager hibernateTransactionManager = new HibernateTransactionManager();
		hibernateTransactionManager.setSessionFactory(sessionFactory);

		return hibernateTransactionManager;
	}

}
