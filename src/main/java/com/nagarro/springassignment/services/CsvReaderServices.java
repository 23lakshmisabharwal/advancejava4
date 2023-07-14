package com.nagarro.springassignment.services;

import java.io.*;


import com.nagarro.springassignment.models.Tshirts;
import com.opencsv.*;
import java.util.*;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import org.springframework.stereotype.Controller;


@Controller
public class CsvReaderServices {
	public void getmapData() throws  NumberFormatException, IOException {
		File folder = new File("C:\\Users\\lakshmisabharwal\\Desktop\\LakshmiNagarro\\lakshmi-sabharwal\\AdvanceJavaAssignment4\\src\\main\\resources");

		File[] files = folder.listFiles((dir, name) -> name.endsWith(".csv"));
		for (File file : files) {
		
			insertingInDB(file.getAbsolutePath());
		}
	
	}
	
	// inserting data in database

	public void insertingInDB(String file) throws NumberFormatException, IOException {
		
		SessionFactory factory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Tshirts.class)
				.buildSessionFactory();
		Session session = factory.openSession();
		session.beginTransaction();
		
			
			CSVParser parser = new CSVParserBuilder().withSeparator('|').withIgnoreQuotations(true).build();
			CSVReader csvReader = new CSVReaderBuilder(new FileReader(file)).withSkipLines(1).withCSVParser(parser).build();
			
              String[] allmapData;
		
		
			
				while ((allmapData = csvReader.readNext()) != null) {
					Tshirts tshirt = new Tshirts();
					tshirt.setID(allmapData[0].toUpperCase());
					tshirt.setName(allmapData[1].toUpperCase());
					tshirt.setColour(allmapData[2].toUpperCase());
					tshirt.setGender(allmapData[3].toUpperCase());
					tshirt.setSize(allmapData[4].toUpperCase());
					tshirt.setPrice(Float.parseFloat(allmapData[5]));
					tshirt.setRating(Float.parseFloat(allmapData[6]));
					tshirt.setAvailability(allmapData[7].toUpperCase());
					session.save(tshirt);
				}
		

		session.getTransaction().commit();

	}

	@SuppressWarnings({ "unchecked" })
public List<Tshirts> sortTshirts(String colour, String size, String gender, String outputPreference) {
		SessionFactory factory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Tshirts.class)
				.buildSessionFactory();
		Session session = factory.openSession();
		Query query;
		
		// if outputpreference is price
		if (outputPreference.equals("1")) {
			query = session
					.createQuery("from Tshirts where COLOUR=:colour AND  SIZE=:size AND GENDER=:gender order by PRICE");
		}

		// if outputpreference is rate
		else if (outputPreference.equals("2")) {
			query = session.createQuery(
					"from Tshirts where COLOUR=:colour AND  SIZE=:size AND GENDER=:gender order by RATING DESC");
		}

		// if outputpreference is price and rate both
		else {
			query = session.createQuery(
					"from Tshirts where COLOUR=:colour AND  SIZE=:size AND GENDER=:gender order by PRICE,RATING DESC");
		}

		query.setParameter("colour", colour);
		query.setParameter("size", size);
		query.setParameter("gender", gender);
		List<Tshirts> tshirtlist = (List<Tshirts>) query.list();

		
		
		return tshirtlist;
	}

	
	}