package app;
import org.aspectj.weaver.ast.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
/**
 * Created by 803100 on 13.10.2017.
 */
@Service
public class WebService {
    @Autowired
    private Repository repository;

    public String findAll(){
//        System.out.print(repository.count());
//        System.out.print(repository.findOne(1L).toString());
        return repository.findAll().toString();
    }

    public void addCar (String markname, String modelname, int enginesize, int power, int numberofseats, int
            price, int maxspeed){
        System.out.print(markname);
        System.out.print(modelname);
        repository.save(new Cars_Model(markname, modelname, enginesize, power, numberofseats, price, maxspeed));
    }

    public void delCar (long idCars){
        repository.delete(idCars);
    }
}
