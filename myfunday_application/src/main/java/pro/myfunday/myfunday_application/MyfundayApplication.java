package pro.myfunday.myfunday_application;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.jdbc.autoconfigure.DataSourceAutoConfiguration;

@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class})
public class MyfundayApplication {

	public static void main(String[] args) {
		SpringApplication.run(MyfundayApplication.class, args);
	}

}
