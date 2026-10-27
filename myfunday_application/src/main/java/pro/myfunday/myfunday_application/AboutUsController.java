package pro.myfunday.myfunday_application;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AboutUsController{
	@GetMapping("/about_us")
	public String aboutUs() {
		return "aboutUs";
	}
}