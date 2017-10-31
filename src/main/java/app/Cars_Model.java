package app;

import org.springframework.stereotype.Controller;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by 803100 on 13.10.2017.
 */
@Entity
@Table(name = "сars")
public class Cars_Model {
    @Id
    @Column(name = "idCars")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long idCars;

    @Column(name = "Markname")
    private String markname;

    @Column(name = "Modelname")
    private String modelname;

    @Column(name = "Enginesize")
    private int enginesize;

    @Column(name = "Power")
    private int power;

    @Column(name = "Numberofseats")
    private int numberofseats;

    @Column(name = "Price")
    private int price;

    @Column(name = "Maxspeed")
    private int maxspeed;

    public Cars_Model(){

    }

    public Cars_Model(String markname, String modelname, int enginesize, int power, int numberofseats, int price, int
            maxspeed){
        this.markname = markname;
        this.modelname = modelname;
        this.enginesize = enginesize;
        this.power = power;
        this.numberofseats = numberofseats;
        this.price = price;
        this.maxspeed = maxspeed;
    }

    public long getId(){
        return idCars;
    }

    public void setId(long idCars){
        this.idCars = idCars;
    }

    public String getmarkname(){
        return markname;
    }

    public void setmarkname(String markname){
        this.markname = markname;
    }

    public String getmodelname(){
        return modelname;
    }

    public void setmodelname(String modelname){
        this.modelname = modelname;
    }

    public int getenginesize(){
        return enginesize;
    }

    public void setenginesize(int enginesize){
        this.enginesize = enginesize;
    }

    public int getpower(){
        return power;
    }

    public void setpower(int power){
        this.power = power;
    }

    public int getnumberofseats(){
        return numberofseats;
    }

    public void setnumberofseats(int numberofseats){
        this.numberofseats = numberofseats;
    }

    public int getprice(){
        return price;
    }

    public void setprice(int price){
        this.price = price;
    }

    public int getmaxspeed(){
        return maxspeed;
    }

    public void setmaxspeed(int maxspeed){
        this.maxspeed = maxspeed;
    }

    public Cars_Model(long idCars, String markname, String modelname, int enginesize, int power, int numberofseats,
                      int price, int maxspeed){
        this.idCars = idCars;
        this.markname = markname;
        this.modelname = modelname;
        this.enginesize = enginesize;
        this.power = power;
        this.numberofseats = numberofseats;
        this.price = price;
        this.maxspeed = maxspeed;
    }

    @Override
    public String toString(){
        return "{" + "\"id\":" + idCars + ",\"Markname\":\"" + markname + "\",\"Modelname\":\"" + modelname + "\"," +
                "\"Enginesize\":\"" + enginesize + "\"," + "\"Power\":\"" + power +"\"," +
                "\"Numberofseats\":\"" + numberofseats +"\"," + "\"Price\":\"" + price +"\"," +
                "\"Maxspeed\":\"" + maxspeed +
                "\"}";
    }
}
