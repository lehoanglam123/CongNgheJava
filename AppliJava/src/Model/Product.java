package Model;

public class Product {
	private int id;
	private int idCategory;
	private String nameProduct;
	private String image;
	private double price;
	private int quantity;
	private String title;
	private String describe;
	
	public Product() {}

	public Product(int id, int idCategory, String nameProduct, String image, double price, int quantity, String title,
			String describe) {
		//super();
		this.id = id;
		this.idCategory = idCategory;
		this.nameProduct = nameProduct;
		this.image = image;
		this.price = price;
		this.quantity = quantity;
		this.title = title;
		this.describe = describe;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getIdCategory() {
		return idCategory;
	}
	public void setIdCategory(int idCategory) {
		this.idCategory = idCategory;
	}
	public String getNameProduct() {
		return nameProduct;
	}
	public void setNameProduct(String nameProduct) {
		this.nameProduct = nameProduct;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescribe() {
		return describe;
	}
	public void setDescribe(String describe) {
		this.describe = describe;
	}
}
