package com.nagarro.springassignment.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tshirtstock")
public class Tshirts {

	@Id
	private String id; 
	 @Column(name="name")
    private String name;
	 @Column(name="colour")
    private String colour;
	 @Column(name="gender")
    private String gender;
	 @Column(name="size")
    private String size;
	 @Column(name="rating")
    private float rating;
	 @Column(name="price")
    private float price;
	 @Column(name="availability")
    private String availability;

    public Tshirts(){}

    public Tshirts(String ID, String Name, String Colour, String Gender,String Size,float Price,float Rating,String Availability) {
    	
        this.id = ID;
        this.name = Name;
        this.colour = Colour;
        this.gender = Gender;
        this.size = Size;
        this.price = Price;
        this.rating = Rating;
        this.availability = Availability;
        
    }

    public String getID()
    {
        return id;
    }
    public void setID(String ID)
    {
    	 this.id = ID;
    }

    public String getName()
    {
        return name;
    }
    public void setName(String Name)
    {
    	  this.name = Name;
    }

    public String getColour()
    {
        return  colour;
    }
    public void setColour(String Colour)
    {
    	this.colour = Colour;
    }
    
    public String getGender()
    {
        return gender;
    }
    public void setGender(String Gender)
    {
        this.gender=Gender;
    }

    public String getSize()
    {
        return size;
    }
    public void setSize(String Size)
    {
        this.size=Size;
    }

    public float getPrice()
    {
        return price;
    }
    public void setPrice(float Price)
    {
    	 this.price = Price;
    }
    
    public float getRating()
    {
        return rating;
    }
    public void setRating(float Rating)
    {
        this.rating=Rating;
    }
    
    public String getAvailability()
    {
        return availability;
    }
    public void setAvailability(String Availability)
    {
        this.availability=Availability;
    }

	@Override
	public String toString() {
		return "Tshirt [id=" + id + ", name=" + name + ", colour=" + colour + ", gender=" + gender + ", size=" + size
				+ ", rating=" + rating + ", price=" + price + ", availability=" + availability + "]";
	}

   
}