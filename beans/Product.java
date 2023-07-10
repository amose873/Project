package beans;
public class Product{
    private int pno;
    private String pname;
    private float pprice;
    private String discount;
    public Product(){
    }
    public Product(int pno,String pname,float pprice,String discount){
        this.pno=pno;
        this.pname=pname;
        this.pprice=pprice;
        this.discount=discount;
    }
    public int getpno(){
        return pno;
    }
    public void setpno(int pno){
        this.pno=pno;
    }
    public String getpname(){
        return pname;
    }
    public void setpname(String pname){
        this.pname=pname;
    }
    public float getpprice(){
        return pprice;
    }
    public void setpprice(float pprice){
        this.pprice=pprice;
    }
    public String getdiscount(){
        return discount;
    }
    public void setdiscount(String discount){
        this.discount=discount;
    }
}