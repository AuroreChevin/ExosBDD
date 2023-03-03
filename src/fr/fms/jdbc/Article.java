package fr.fms.jdbc;
/**
 * Exo 2 Classe des Articles
 * @author ChevinA 2023
 *
 */
public class Article {
	private int id;
	private String description;
	private String brand;
	private double price;
	/**
	 * Constructeur prenant 4 paramètres
	 * @param id int
	 * @param description String
	 * @param brand String
	 * @param price double
	 */
	public Article(int id, String description, String brand, double price) {
		this.id = id;
		this.description = description;
		this.brand = brand;
		this.price = price;
	}
/**
 * Constructeur prenant 2 paramètres
 * @param id int 
 * @param price double
 */
	public Article(int id, double price) {
		this.id = id;
		this.price = price;
	}
/**
 * Constructeur prenant 3 paramètres
 * @param description String
 * @param brand String
 * @param price double
 */
	public Article(String description, String brand, double price) {
		this.description = description;
		this.brand = brand;
		this.price = price;
	}
/**
 * Constructeur prenant 1 paramètre
 * @param id int
 */
	public Article(int id) {
		this.id = id;
	}
/**
 * methode permettant de récupérer l'id d'un article
 * @return id int 
 */
	public int getId() {
		return id;
	}
	/**
	 * methode permettant de modifier l'id d'un article
	 * @param id int
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * methode permettant de récupérer la description d'un article
	 * @return description string
	 */
	public String getDescription() {
		return description;
	}
	/**
	 * methode permettant de modifier la description d'un article
	 * @param description string
	 */
	public void setDescription(String description) {
		this.description = description;
	}
	/**
	 * methode permettant de récupérer la marque d'un article
	 * @return brand string
	 */
	public String getBrand() {
		return brand;
	}
	/**
	 * méthode permettant de modifier la marque d'un article
	 * @param brand string
	 */
	public void setBrand(String brand) {
		this.brand = brand;
	}
	/**
	 * méthode permettant de récupérer le prix d'un article
	 * @return price double
	 */
	public double getPrice() {
		return price;
	}
	/**
	 * methode permettant de modifier le prix d'un article
	 * @param price double
	 */
	public void setPrice(int price) {
		this.price = price;
	}
	/**
	 * méthode toString redéfinie permmetant l'affiche des attributes de l'objet
	 */
	@Override
	public String toString() {
		return "Article [id=" + id + ", description=" + description + ", brand=" + brand + ", price=" + price + "]";
	}
	
	
}
