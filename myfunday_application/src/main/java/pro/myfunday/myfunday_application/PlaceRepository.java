package pro.myfunday.myfunday_application;

import java.util.List;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.Repository;

public interface PlaceRepository extends Repository<Place, String>{
	@Query("SELECT name, description FROM public.places;")
	List<Place> findPlaces(String old, String typeOfVacation, String district, String budget, String wish, String eventStartTime, String eventEndTime, String dayOfTheWeek);
}