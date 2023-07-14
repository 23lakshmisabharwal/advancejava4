package com.nagarro.springassignment.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nagarro.springassignment.models.User;

@Repository
public class UserLoginDao {

		@SuppressWarnings("rawtypes")
		@RequestMapping("/usertable")
	public boolean checkLogin(String username, String password) {
		SessionFactory factory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(User.class)
				.buildSessionFactory();
		Session session = factory.openSession();
		Query query;
		query = session.createQuery("from User where username=:username AND  password=:password");

		query.setParameter("username", username);
		query.setParameter("password", password);
		
		
		User currentuser=(User) query.uniqueResult();
		
		if(currentuser!=null) {
			return true;
		}

		return false;
	}
}