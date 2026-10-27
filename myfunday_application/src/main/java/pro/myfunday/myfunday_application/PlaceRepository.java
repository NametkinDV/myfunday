package pro.myfunday.myfunday_application;

import java.util.List;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.Repository;
import org.springframework.data.repository.query.Param;

public interface PlaceRepository extends Repository<Place, String>{
	@Query("SELECT DISTINCT p.* FROM public.places p\n"
			+ "LEFT JOIN public.locations l      ON p.id = l.place_id\n"
			+ "LEFT JOIN public.opening_hours oh ON p.id = oh.place_id\n"
			+ "WHERE(\n"
			+ "        NULLIF(:district, '') IS NULL\n"
			+ "        OR l.district_id = (SELECT id FROM public.districts WHERE name = :district))\n"
		
			+ "    AND (\n"
			+ "        NULLIF(:typeOfVacation, '') IS NULL \n"
			+ "        OR p.type_of_recreation = (\n"
			+ "            CASE :typeOfVacation\n"
			+ "                WHEN 'активный'  THEN 1\n"
			+ "                WHEN 'спокойный' THEN 2\n"
			+ "            END))\n"
	
			+ "    AND (\n"
			+ "        :budget IS NULL\n"
			+ "        OR p.budget <= :budget)\n"
		
			+ "     AND ("
			+ "	    NULLIF(:old, '') IS NULL"
			+ "	    OR :old <> 'Несовершеннолетний' "
			+ "	    OR NOT EXISTS ( "
			+ "	        SELECT 1 "
			+ "	        FROM public.attributes_of_places aop "
			+ "	        JOIN public.attributes a ON aop.attribute_id = a.id "
			+ "	        WHERE aop.place_id = p.id "
			+ "	          AND a.name = 'Только совершеннолетние' "
			+ "	    )) "
			
			+ "    AND (\n"
			+ "        :wish IS NULL\n"
			+ "        OR :wish = 'обычная прогулка'\n"
			+ "        OR EXISTS (\n"
			+ "            SELECT 1\n"
			+ "            FROM public.attributes_of_places aop\n"
			+ "            JOIN public.attributes a ON aop.attribute_id = a.id\n"
			+ "            WHERE aop.place_id = p.id\n"
			+ "              AND a.name = CASE :wish\n"
			+ "                               WHEN 'досуг для ребёнка' THEN 'Сводить ребенка'\n"
			+ "                               WHEN 'свидание'  THEN 'Свидание'\n"
			+ "                           END))\n"
			+ "    AND (\n"
			+ "        (NULLIF(:eventStartTime, '') IS NULL "
			+ "         AND NULLIF(:eventEndTime, '') IS NULL)\n"
			+ "        OR oh.is_24_7 = true\n"
			+ "        OR (\n"
			+ "            NULLIF(:eventStartTime, '') IS NOT NULL\n"
			+ "            AND NULLIF(:eventEndTime, '') IS NOT NULL\n"
			+ "            AND CASE\n"
			+ "                WHEN oh.crosses_midnight THEN\n"
			+ "                    :eventStartTime::time >= oh.opens_at\n"
			+ "                    OR :eventEndTime::time <= oh.closes_at\n"
			+ "                ELSE\n"
			+ "                    :eventStartTime::time >= oh.opens_at\n"
			+ "                    AND :eventEndTime::time <= oh.closes_at\n"
			+ "            END\n"
			+ "        ));") 
	List<Place> findPlaces(@Param("old") String old, @Param("typeOfVacation") String typeOfVacation, @Param ("district") String district, @Param("budget") Integer budget, @Param("wish") String wish,@Param("eventStartTime") String eventStartTime, @Param("eventEndTime") String eventEndTime);
}