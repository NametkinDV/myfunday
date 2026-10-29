package pro.myfunday.myfunday_application;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/result")
public class ResultPageController{
	
	private final PlaceRepository placeRepository;
	
	public ResultPageController(PlaceRepository placeRepository) {
		this.placeRepository = placeRepository;
	}
	
	@GetMapping
	public String resultPage(Model model) {
		FormOfOrder formOfOrder = (FormOfOrder) model.getAttribute("redirectFormOfOrder");
		if (formOfOrder == null) formOfOrder = new FormOfOrder();
		
		List<Place> allPlaces = placeRepository.findPlaces(formOfOrder.getOld(), formOfOrder.getTypeOfVacation(), formOfOrder.getDistrict(), formOfOrder.getBudget(), formOfOrder.getWish(), formOfOrder.getEventStartTime(), formOfOrder.getEventEndTime());
		
		List<Place> mainPlaces = new ArrayList<>(allPlaces.subList(0, mainPlacesCounting(formOfOrder)));
		List<List<Place>> routes = splitRouts(mainPlaces);
		
		model.addAttribute("routes", routes);
		return "resultPage";
	}
	
	public int timeCounting(FormOfOrder formOfOrder) { // Подсчёт сколько пользователь расчитывает потратить времени на прогулку
		if (formOfOrder.getEventStartTime() == "" && formOfOrder.getEventEndTime() == "") return 24; // Если время не указано
		else if (formOfOrder.getEventStartTime() == "") return Integer.parseInt((formOfOrder.getEventEndTime()).split(":")[0]) - 8; // Если указано только время окончания
		else if (formOfOrder.getEventEndTime() == "") return 24 - Integer.parseInt((formOfOrder.getEventStartTime()).split(":")[0]);// Если указано только время начала
		
		else { // Если указаны оба времени
		int start = Integer.parseInt((formOfOrder.getEventStartTime()).split(":")[0]); 
		int end = Integer.parseInt((formOfOrder.getEventEndTime()).split(":")[0]);
		return end-start;
		}
	}
	
	public int mainPlacesCounting(FormOfOrder formOfOrder) { // Подсчёт необходимого количества мест для вывода
		int res = timeCounting(formOfOrder) * 3;
		return res <= 15 ? res : 15;
	}
	
	public List<List<Place>> splitRouts(List<Place> places){ // Разделение мест на 3 маршрута
		List<List<Place>> routes = new ArrayList<>();
		
		int total = places.size();
	    int baseSize = total / 3;
	    int remainder = total % 3;
	    int from = 0;

	    for (int i = 0; i < 3; i++) {
	        int pageSize = baseSize + (i < remainder ? 1 : 0);
	        int to = from + pageSize;

	        routes.add(new ArrayList<>(places.subList(from, to)));
	        from = to;
	    }
		
		return routes;
	}
}