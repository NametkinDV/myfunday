package pro.myfunday.myfunday_application;

import lombok.Data;

@Data
public class FormOfOrder{
	private String old;
	private String typeOfVacation;
	private String district;
	private String budget = "500";
	private String wish = "default";
	private String eventStartTime;
	private String eventEndTime;
	private String dayOfTheWeek;
}