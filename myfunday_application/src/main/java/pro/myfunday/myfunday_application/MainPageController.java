package pro.myfunday.myfunday_application;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class MainPageController{
	@GetMapping("/")
	public String mainPage(Model model) {
		model.addAttribute("formOfOrder", new FormOfOrder());
		return "main";
	}
	
	@PostMapping
	public String getMainPageForm(@ModelAttribute FormOfOrder formOfOrder, RedirectAttributes redirectFormOfOrder) {
		redirectFormOfOrder.addFlashAttribute("redirectFormOfOrder", formOfOrder);
		return "redirect:/result";
	}
}