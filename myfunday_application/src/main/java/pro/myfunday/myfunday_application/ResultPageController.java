package pro.myfunday.myfunday_application;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/resultPage")
public class ResultPageController{
	
	private final PlaceRepository placeRepository;
	
	public ResultPageController(PlaceRepository placeRepository) {
		this.placeRepository = placeRepository;
	}
	
	@GetMapping
	public String resultPage(Model model) {
		FormOfOrder formOfOrder = (FormOfOrder) model.getAttribute("redirectFormOfOrder");
		if (formOfOrder == null) formOfOrder = new FormOfOrder();
		
		List<Place> places = placeRepository.findPlaces(formOfOrder.getDistrict());
		
		model.addAttribute("places", places);
		return "resultPage";
	}
}