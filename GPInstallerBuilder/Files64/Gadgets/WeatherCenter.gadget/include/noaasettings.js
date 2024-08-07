//	Javascript file for the WeatherCenter gadget
//	(c) 2009
//	WeatherCenter Gadget Team
//	Development: hadj 
//	Graphics: Tex
//	Testing: Digital	
////////////////////////////////////////////////////////////////////////


var NOAACityFlag;


function NOAALoadSettings()
{
	NOAACityFlag = 0;

	loccode.value = System.Gadget.Settings.read("NOAAlastSearch");
	loccode_id.value = System.Gadget.Settings.read("NOAAlocationCode");
	
	updateInt[0].disabled = true;
	updateInt[1].checked = "1";
	updateIntValue.value = System.Gadget.Settings.read("NOAAupdateInterval");

		
	NOAAUnits_makeUnitSelector("ShowParametersOption1");
	NOAAUnits_makeUnitSelector("ShowParametersOption2");
	NOAAUnits_makeUnitSelector("ShowParametersOption3");
	NOAAUnits_makeUnitSelector("ShowParametersOption4");
	
}

/////////////////



function NOAAUnits_makeUnitSelector(ShowParametersOption)
{
var unitsArray = [
		{"name":lng_Stats["nothing"], "value":"nothing"},
		{"name":lng_Stats["wind"], "value":"wind"},
		{"name":lng_Stats["humidity"], "value":"humidity"},
		{"name":lng_Stats["pressure"], "value":"pressure"},
		{"name":lng_Stats["visibility"], "value":"visibility"},
		{"name":lng_Stats["sunrise"], "value":"sunrise"},
		{"name":lng_Stats["sunset"], "value":"sunset"},
		{"name":lng_Stats["dewpoint"], "value":"dewpoint"},
		{"name":lng_Stats["latitude"], "value":"latitude"},
		{"name":lng_Stats["longitude"], "value":"longitude"}]


for (i = 0; i < unitsArray.length; i++)
	{
		var sel = document.getElementById(ShowParametersOption);
		var opt = document.createElement("option");
		opt.value = unitsArray[i].value;
		opt.innerHTML = unitsArray[i].name;
		if (unitsArray[i].value == System.Gadget.Settings.read("NOAA"+ShowParametersOption)) opt.selected = true; 
		sel.appendChild(opt);
	}
} 



/////////////////


function NOAASearchCityCode(LocCode)
{

	clearResults();


	if ((loccode.value).search(/\d/) > -1) {
		var location = "http://www.weather.gov/forecasts/xml/SOAP_server/ndfdXMLclient.php?whichClient=LatLonListZipCode&listZipCodeList=" + LocCode;

		var tmp = new ActiveXObject("Microsoft.XMLHTTP");
		tmp.open("GET", location, true);
		tmp.onreadystatechange=function()
		{
			if (tmp.readyState==4)
				{
					if (tmp.Status == 200) NOAAParseCityResults(tmp.responseText);
					else {document.getElementById("loccode").value = lng_NoData; return;}
				}
		}
		tmp.Send(null);
	}



	else {
		var location = "http://www.weather.gov/forecasts/xml/SOAP_server/ndfdXMLclient.php?whichClient=LatLonListCities&listCitiesLevel=1234";

		var tmp = new ActiveXObject("Microsoft.XMLHTTP");
		tmp.open("GET", location, true);
		tmp.onreadystatechange=function()
		{
			if (tmp.readyState==4)
				{
					if (tmp.Status == 200) NOAAParseCityResults(tmp.responseText);
					else {document.getElementById("loccode").value = lng_NoData; return;}
				}
		}
		tmp.Send(null);
	}
}


//////////////////


function NOAAParseCityResults(xmlData)
{
	if ((loccode.value).search(/\d/) > -1) {
		var latLonList = xmlData.substring(xmlData.indexOf("<latLonList>") + 12, xmlData.indexOf("</latLonList>"));

		var option = document.createElement("OPTION");
		option.value = latLonList;
		option.innerText = loccode.value;
		results.appendChild(option);
	}

	else {
		var cityNameList = xmlData.substring(xmlData.indexOf("<cityNameList>") + 14, xmlData.indexOf("</cityNameList>"));
		var latLonList = xmlData.substring(xmlData.indexOf("<latLonList>") + 12, xmlData.indexOf("</latLonList>"));

		var tempNodes = cityNameList.split("|");
		var latLonNodes = latLonList.split(" ");
	
		for (count=0; count<tempNodes.length; count++) {
			var cityname = tempNodes[count].substring(0, tempNodes[count].indexOf(","));
			if ( (cityname).toLowerCase().search((loccode.value).toLowerCase()) > -1)
			{
				var option = document.createElement("OPTION");
				option.value = latLonNodes[count];
				statename = tempNodes[count].substring(tempNodes[count].indexOf(",") + 1, tempNodes[count].length);
				option.innerText = cityname + ", " + statename;
				results.appendChild(option);
			}
		
		}
	}

hide("load_indicator");

}

/////////////////////

function NOAAParseStationResults(latlonstr,state)
{
	clearResults();

	var StatesListArray = new Array("AK","AL","AR","AS","AZ","CA","CO","CT","DC","DE","FM","FL","GA","GU","HI","IA","ID","IL","IN","KS","KY","LA","MH","MA","MD","ME","MI","MN","MO","MS","MT","NC","ND","NE","NH","NJ","NM","NV","NY","OH","OK","OR","PW","PA","PR","RI","SC","SD","TN","TX","UT","VA","VI","VT","WA","WI","WV","WY");

	if ((loccode.value).search(/\d/) > -1) {
		for (i = 0; i < StatesListArray.length; i++) {
			NOAAParseStationResultsAllStates(latlonstr,StatesListArray[i]);
		}
	}


	else {
		NOAAParseStationResultsAllStates(latlonstr,state);
	}


	if (StationFoundFlag == 0)
	{
		for (count = 0; count < aryStationCodes[state].length; count++) {
			var option = document.createElement("OPTION");
			option.value = aryStationCodes[state][count][1];
			option.innerText = aryStationCodes[state][count][0];
			results.appendChild(option);
		}	

	}


hide("load_indicator");

}



function NOAAParseStationResultsAllStates(latlonstr,state)
{

	var citylat = latlonstr.slice(0, latlonstr.lastIndexOf(","));
	var citylon = latlonstr.slice(latlonstr.lastIndexOf(",") + 1, latlonstr.length);

	StationFoundFlag = 0;

	for (count = 0; count < aryStationCodes[state].length; count++) {

		var stationlat = aryStationCodes[state][count][2].slice(0, aryStationCodes[state][count][2].lastIndexOf(","));
		var stationlon = aryStationCodes[state][count][2].slice(aryStationCodes[state][count][2].lastIndexOf(",") + 1, aryStationCodes[state][count][2].length);

		if ((stationlat + 5) > citylat && (stationlat - 5) < citylat && (stationlon + 5) > citylon && (stationlon - 5) < citylon) {
			var option = document.createElement("OPTION");
			option.value = aryStationCodes[state][count][1];
			option.innerText = aryStationCodes[state][count][0];
			results.appendChild(option);
			StationFoundFlag = 1;
		}
	
	}

return StationFoundFlag;

}

	