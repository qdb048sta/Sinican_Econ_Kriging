local POLL="PM2.5 PM10 SO2 NO2"
local value="avg max"
cd "D:\User_Data\Desktop\kriging\linko_data"
foreach poll of local POLL{
    foreach v of local value{
	//NO2_avg_kriging_2017_2021
	import delimited "`poll'_`v'_kriging_2017_2021.csv",clear
	tempfile csvtodta
	save `csvtodta'
	
	import delimited "`poll'_`v'_kriging.csv",clear
	append using `csvtodta',force
	save "`poll'_`v'_kriging_2000_2021.dta",replace
	}
	}
