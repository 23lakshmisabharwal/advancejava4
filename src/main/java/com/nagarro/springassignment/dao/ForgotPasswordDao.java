package com.nagarro.springassignment.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import com.nagarro.springassignment.models.User;

public class ForgotPasswordDao {
	public boolean forgetPass(String uname, String pass) {
		// Create a new SessionFactory object with the Hibernate configuration file and
		// annotated class
		SessionFactory factory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(User.class)
				.buildSessionFactory();

		// Open a new Session and begin a new transaction
		Session session = factory.openSession();
		session.beginTransaction();

		// Create a new Query object to update the password for the specified user
		Query query;
		query = session.createQuery("update User set password=:pass where username=:uname");

		// Set the parameter values for the query
		query.setParameter("uname", uname);
		query.setParameter("pass", pass);

		// Execute the update query and commit the transaction
		int real = query.executeUpdate();
		session.getTransaction().commit();

		// Return true if the update operation affected one row, otherwise return false
		if (real == 1) {
			return true;
		}
		return false;
	}

}
