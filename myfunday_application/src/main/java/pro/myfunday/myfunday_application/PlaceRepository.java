package pro.myfunday.myfunday_application;

import java.util.List;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.Repository;

public interface PlaceRepository extends Repository<Place, String>{
	@Query("SELECT * FROM districts AS district;")
	List<Place> findPlaces(String district);
}