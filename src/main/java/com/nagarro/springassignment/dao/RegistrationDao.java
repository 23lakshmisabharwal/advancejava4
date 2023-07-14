package com.nagarro.springassignment.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.nagarro.springassignment.models.User;


public class RegistrationDao {

	// Method to register user
	public boolean registerUser(String uname, String pass) {

		// Check if username or password is null or their length is less than required
		if (uname == null || pass == null || uname.length() <= 4 || pass.length() < 8) {
			return false;
		}

		// Create a new UserInfo object with the provided username and password
		User user = new User(uname, pass);
		boolean flag = false;

		// Create a new Hibernate SessionFactory object
		SessionFactory factory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(User.class)
				.buildSessionFactory();

		// Open a new Hibernate session
		Session session = factory.openSession();

		// Begin a new transaction
		session.beginTransaction();

		// Save the user object to the database
		if (user != null) {
			session.save(user);
			flag = true;
		}

		// Commit the transaction and return the flag value
		session.getTransaction().commit();
		return flag;
	}
}