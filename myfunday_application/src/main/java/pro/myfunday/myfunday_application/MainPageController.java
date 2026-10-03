package pro.myfunday.myfunday_application;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/")
@Controller
public class MainPageController{
	@GetMapping("/mainPage")
	public String mainPage() {
		return "main";
	}
	
	@PostMapping
	public String getMainPageForm() {
		return "redirect:/resultPage";
	}
}