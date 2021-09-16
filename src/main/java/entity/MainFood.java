package entity;

public class MainFood {
    private int id;
    private String img,name,title;
    private String price;
    private String typeProduct;
    public MainFood(){

    }
    public MainFood(int id, String img, String name, String title, String price, String typeProduct) {
        this.id = id;
        this.img = img;
        this.name = name;
        this.title = title;
        this.price = price;
        this.typeProduct = typeProduct;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }
    public String getTypeProduct() {
        return typeProduct;
    }

    public void setTypeProduct(String typeProduct) {
        this.typeProduct = typeProduct;
    }



}
