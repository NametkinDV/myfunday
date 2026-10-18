package pro.myfunday.myfunday_application;

import lombok.Data;

@Data
public class FormOfOrder{
	private String old;
	private String typeOfVacation;
	private String district;
	private String budget;
	private String wish;
	private String eventStartTime;
	private String eventEndTime;
}