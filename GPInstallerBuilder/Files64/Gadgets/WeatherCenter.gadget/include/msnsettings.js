//	Javascript file for the WeatherCenter gadget
//	(c) 2009
//	WeatherCenter Gadget Team
//	Development: hadj 
//	Graphics: Tex
//	Testing: Digital	
////////////////////////////////////////////////////////////////////////




function MSNLoadSettings()
{
	loccode.value = System.Gadget.Settings.read("MSNlastSearch");
	loccode_id.value = System.Gadget.Settings.read("MSNlocationCode");
	
	updateInt[0].disabled = true;
	updateInt[1].checked = "1";
	updateIntValue.value = System.Gadget.Settings.read("MSNupdateInterval");

		
	MSNUnits_makeUnitSelector("ShowParametersOption1");
	MSNUnits_makeUnitSelector("ShowParametersOption2");
	MSNUnits_makeUnitSelector("ShowParametersOption3");
	MSNUnits_makeUnitSelector("ShowParametersOption4");
	
}

/////////////////



function MSNUnits_makeUnitSelector(ShowParametersOption)
{
var unitsArray = [
		{"name":lng_Stats["nothing"], "value":"nothing"},
		{"name":lng_Stats["flik"], "value":"flik"},
		{"name":lng_Stats["wind"], "value":"wind"},
		{"name":lng_Stats["humidity"], "value":"humidity"},
		{"name":lng_Stats["precipitation"], "value":"precipitation"},
		{"name":lng_Stats["sunrise"], "value":"sunrise"},
		{"name":lng_Stats["sunset"], "value":"sunset"},
		{"name":lng_Stats["latitude"], "value":"latitude"},
		{"name":lng_Stats["longitude"], "value":"longitude"}
		]


for (i = 0; i < unitsArray.length; i++)
	{
		var sel = document.getElementById(ShowParametersOption);
		var opt = document.createElement("option");
		opt.value = unitsArray[i].value;
		opt.innerHTML = unitsArray[i].name;
		if (unitsArray[i].value == System.Gadget.Settings.read("MSN"+ShowParametersOption)) opt.selected = true; 
		sel.appendChild(opt);
	}
} 



/////////////////


function MSNSearchCityCode(LocCode)
{
	var location = "http://weather.service.msn.com/find.aspx?outputview=search&src=vista&weasearchstr=" + LocCode;

	clearResults();

	searchhold = loccode.value;
	
 	var tmp = new ActiveXObject("Microsoft.XMLHTTP");
	tmp.open("GET", location, true);
	tmp.onreadystatechange=function()
	{
		if (tmp.readyState==4)
			{
				if (tmp.Status == 200) MSNParseCityResults(tmp.responseXML);
				else {document.getElementById("loccode").value = lng_NoData; return;}
			}
	}
	tmp.Send(null);
}


//////////////////


function MSNParseCityResults(xmlData)
{

	tempNodes=xmlData.getElementsByTagName("weather");
	
	for (count=0;count<tempNodes.length;count++) {
		var option = document.createElement("OPTION");
		cityNode=tempNodes[count];
		option.value=cityNode.getAttribute("weatherlocationcode");
		option.innerText=cityNode.getAttribute("searchlocation");
		results.appendChild(option);
	}
hide("load_indicator");	
}

/////////////////////


	