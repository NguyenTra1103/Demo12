package entity;

public class Product {
    private int id;
    private String name;
    private String img;
    private String price;
    private String title;
    private String typeProduct;

    public Product() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getTypeProduct() {
        return typeProduct;
    }

    public void setTypeProduct(String typeProduct) {
        this.typeProduct = typeProduct;
    }

    public Product(int id, String name, String img, String price, String title, String typeProduct) {
        this.id = id;
        this.name = name;
        this.img = img;
        this.price = price;
        this.title = title;
        this.typeProduct = typeProduct;
    }
}
