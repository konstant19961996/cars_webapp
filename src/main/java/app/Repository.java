//package app.Cars_Model;
package app;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import java.util.List;
/**
 * Created by 803100 on 13.10.2017.
 */
public interface Repository extends CrudRepository<Cars_Model, Long> {
}
