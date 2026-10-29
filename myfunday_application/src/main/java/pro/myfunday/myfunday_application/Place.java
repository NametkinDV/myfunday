package pro.myfunday.myfunday_application;

import lombok.Data;

@Data
public class Place{
	private final String name;
	private final String description;
	private final String short_description;
	private final String communication;
	private final String district;
	private final Double latitude;
	private final Double longitude;
	private final String address;
	private final String opensAt;
	private final String closesAt;
	private final String img;
}