package pro.myfunday.myfunday_application;

import lombok.Data;

@Data
public class Place{
	private final String name;
	private final String district;
	private final String latitude;
	private final String longitude;
	private final String address;
	private final String opensAt;
	private final String closesAt;
}