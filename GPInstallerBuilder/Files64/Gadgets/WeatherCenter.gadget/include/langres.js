////////////////////////////////////////////////////////////////////////////////
//
// LOCALIZABLE VARIABLES
//
////////////////////////////////////////////////////////////////////////////////
var L_SHOWMORE_TEXT             = "More forecast days";
var L_SHOWLESS_TEXT             = "Less forecast days";
var L_FULLMODE_TEXT             = "Show additional info";
var L_MINIMODE_TEXT             = "Do not show additional info";
var L_REFRESH_TEXT             	= "Refresh data";
var lng_Updating = "updating";
var lng_NoData = "no connection";
var lng_Today = "Today";
var lng_Tomorrow = "Tomorrow";
var lng_Updating_Time_Text = "next update at";

Wlng_defLastSearch = "New York, NY";
Wlng_defLocationCode = "USNY0996";

Alng_defLastSearch = "New York, NY";
Alng_defLocationCode = "10001";

WUlng_defLastSearch = "New York, NY";
WUlng_defLocationCode = "10001";

MSNlng_defLastSearch = "New York, NY";
MSNlng_defLocationCode = "wc:USNY0996";

WElng_defLastSearch = "New York, NY";
WElng_defLocationCode = "USNY0996";

WBlng_defLastSearch = "New York, NY";
WBlng_defLocationCode = "u10001|NYXHS";

YAlng_defLastSearch = "Berlin, Germany";
YAlng_defLocationCode = "10385";

GISlng_defLastSearch = "Berlin, Germany";
GISlng_defLocationCode = "10381";

var periodsArray = new Array("","Evening","Overnight","Morning","Afternoon","Day");

var lng_WeatherStatus = {
	"Light Freezing Rain": "Freezing Rain",
	"Light Rain Shower and Windy": "Light Rain Shower",
	"Partly Cloudy and Windy": "Partly Cloudy",
	"Showers in the Vicinity": "Showers",
	"Thunder in the Vicinity": "Thunder",
	"Light Rain with Thunder": "Light Rain",
	"Light Snow Grains": "Snow Grains",
	"Hvy.snowshower": "Heavy Snowshower"
};

var lng_AccuWeatherStatus = {
	"Lgt.rainshower": "Light Rain"
};

var lng_WundergroundStatus = {
	"light snow blowing snow": "light blowing snow"
};

var lng_MSNStatus = {
};

var lng_WeatherEyeStatus = {
};

var lng_WeatherBugStatus = {
};

var lng_nodata = "N/A";


var lng_DayOfWeek = {
	Sunday: "Sunday",
	Monday: "Monday",
	Tuesday: "Tuesday",
	Wednesday: "Wednesday",
	Thursday: "Thursday",
	Friday: "Friday",
	Saturday: "Saturday"
};

var lng_Stats = {
	pressure: "Pressure",
	pressuretrend: "Pressure↑↓",
	wind: "Wind",
	gust: "Wind Gust",
	visibility: "Visibility",
	humidity: "Humidity",
	flik: "Feels Like",
	nothing: "Empty",
	sunrise: "Sunrise↑",
	sunset: "Sunset↓",
	dewpoint: "Dew Point",
	uvindex: "UV-Index",
	uvlevel: "UV-Level",
	moonterminator: "Moon",
	latitude: "Latitude",
	longitude: "Longitude",
	moonrise: "Moon↑",
	moonset: "Moon↓",
	precipitation: "Precipitation",
	thunderstorm: "Thunderstorm",
	airquality: "Airquality",
	localtime: "Time"
};

var pressure_Stats = {
	falling: "<FONT COLOR='#4169E1'>falling</FONT>",
	decreasing: "<FONT COLOR='#4169E1'>falling</FONT>",
	rising: "<FONT COLOR='#FA8072'>rising</FONT>",
	increasing: "<FONT COLOR='#FA8072'>rising</FONT>",
	steady: "steady"
};

var uv_Stats = {
	Low: "Low",
	Moderate: "Moderate",
	High: "High",
	Extreme: "Extreme"
};


var winddirection_Stats = {
	N: "<FONT COLOR='#FA8072'>N</FONT>",
	North: "<FONT COLOR='#FA8072'>N</FONT>",
	NNE: "<FONT COLOR='#FA8072'>NNE</FONT>",
	NE: "<FONT COLOR='#FFD700'>NE</FONT>",
	ENE: "<FONT COLOR='#FFD700'>ENE</FONT>",
	E: "<FONT COLOR='#00FF00'>E</FONT>",
	East: "<FONT COLOR='#00FF00'>E</FONT>",
	ESE: "<FONT COLOR='#00FF00'>ESE</FONT>",
	SE: "<FONT COLOR='#00FF00'>SE</FONT>",
	SSE: "<FONT COLOR='#00FF00'>SSE</FONT>",
	S: "<FONT COLOR='#FF3030'>S</FONT>",
	South: "<FONT COLOR='#FF3030'>S</FONT>",
	SSW: "<FONT COLOR='#FF3030'>SSW</FONT>",
	SW: "<FONT COLOR='#FFD700'>SW</FONT>",
	WSW: "<FONT COLOR='#FFD700'>WSW</FONT>",
	W: "<FONT COLOR='#FFFFFF'>W</FONT>",
	West: "<FONT COLOR='#FFFFFF'>W</FONT>",
	WNW: "<FONT COLOR='#FFFFFF'>WNW</FONT>",
	NW: "<FONT COLOR='#FFFFFF'>NW</FONT>",
	NNW: "<FONT COLOR='#FFFFFF'>NNW</FONT>"
};

var moon_Stats = {
	New: "New",
	"Waxing Crescent": "WC",
	"First Quarter": "FQ",
	"Waxing Gibbous": "WG",
	Full: "Full",
	"Waning Gibbous": "WG",
	"Last Quarter": "LQ",
	"Waning Crescent": "WC",
	Darkened: "Darkened"
};

var moon_Stats_full = {
	New: "New",
	"Waxing Crescent": "Waxing Crescent",
	"First Quarter": "First Quarter",
	"Waxing Gibbous": "Waxing Gibbous",
	Full: "Full",
	"Waning Gibbous": "Waning Gibbous",
	"Last Quarter": "Last Quarter",
	"Waning Crescent": "Waning Crescent",
	Darkened: "Darkened"
};


var lng_Units = {
	"C": "C",
	"F": "F",
	"km": "km",
	"km/h": "km/h",
	"m/s": "m/s",
	"mb": "mb",
	"mi": "mi",
	"mph": "mph",
	"in": "in",
	"cm": "cm",
	"mm": "mm",
	"kPa": "kPa"
};



var lng_Countries = {
	"United Kingdom": "United Kingdom",
	"United States": "United States"
};

var lng_Cities = {
	"Moscow": "Moscow"
};

var lng_Month = {
	Jan: "January",
	Feb: "February",
	Mar: "March",
	Apr: "April",
	May: "May",
	Jun: "June",
	Jul: "July",
	Aug: "August",
	Sep: "September",
	Oct: "October",
	Nov: "November",
	Dec: "December"
};

var lng_Month_Short = {
	Jan: "Jan",
	Feb: "Feb",
	Mar: "Mar",
	Apr: "Apr",
	May: "May",
	Jun: "Jun",
	Jul: "Jul",
	Aug: "Aug",
	Sep: "Sep",
	Oct: "Oct",
	Nov: "Nov",
	Dec: "Dec"
};

var lng_Month_full = {
	January: "January",
	February: "February",
	March: "March",
	April: "April",
	May: "May",
	June: "June",
	July: "July",
	August: "August",
	September: "September",
	October: "October",
	November: "November",
	December: "December"
};

