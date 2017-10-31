package app;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/**
 * Created by 803100 on 13.10.2017.
 */
@Controller
public class MainController {

    @Autowired
    private WebService service;

    //list of cars
    @RequestMapping("/start")
    @ResponseBody
    public String getListOfCars(){
        return service.findAll();
    }

    @RequestMapping("/list")
    public String show(){
        return "cars";
    }

    @RequestMapping("/addCar")
    public String addCar(){
        return "addCar";
    }

    @RequestMapping("/add")
    public void addCar2(@RequestParam("Markname") String markname, @RequestParam("Modelname") String modelname,
                       @RequestParam("Enginesize") int enginesize, @RequestParam("Power") int power, @RequestParam
                               ("Numberofseats") int numberofseats, @RequestParam("Price") int price,
                       @RequestParam("Maxspeed") int maxspeed){
        System.out.print("hello");
        service.addCar(markname, modelname, enginesize, power, numberofseats, price, maxspeed);
    }
    @RequestMapping(value = "/add2", method = RequestMethod.POST)
    public String addCar(@RequestParam("Markname") String markname, @RequestParam("Modelname") String modelname,
                       @RequestParam("Enginesize") int enginesize, @RequestParam("Power") int power, @RequestParam("Numberofseats")
                                     int numberofseats, @RequestParam("Price") int price,
                       @RequestParam("Maxspeed") int maxspeed){
        //service.addCar(markname, "ala", 2, 1, 3, 2, 12);
        service.addCar(markname, modelname, enginesize, power, numberofseats, price, maxspeed);
        return "cars";
    }

    @RequestMapping(value = "/deleteCar", method = RequestMethod.GET)
    public ModelAndView getdata(){
        ModelAndView model = new ModelAndView("deleteCar");
        List<Cars_Model> list = new ArrayList<>();
        String strJson = service.findAll();
        JSONObject dataJsonObj;
        String markname;
        String modelname;
        int power;
        long idCars;

        strJson = strJson.replace("[", "{\"cars\":[");
        strJson = strJson.replace("]", "]}");

        try {
            dataJsonObj = new JSONObject(strJson);
            JSONArray cars = dataJsonObj.getJSONArray("cars");

            for (int i=0; i<cars.length(); i++){
                JSONObject getcar = cars.getJSONObject(i);
                idCars = getcar.getLong("id");
                power = getcar.getInt("Power");
                markname = getcar.getString("Markname");
                modelname = getcar.getString("Modelname");
                list.add(new Cars_Model(idCars, markname, modelname, 0, power, 0, 0, 0));
            }
        }catch (JSONException e){
            e.printStackTrace();
        }

        Map<String,Object> allCars = new HashMap<>();
        allCars.put("allCars", list);
        model.addAllObjects(allCars);
        return model;
    }

    @RequestMapping(value = "/deleteCar", method = RequestMethod.POST)
    public String postDelete(@RequestParam String idCars){
        service.delCar(Long.valueOf(idCars));
        return "cars";
    }
}
