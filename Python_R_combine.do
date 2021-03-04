local POLL="NO2"
local value="avg max"
foreach poll of local POLL{
    foreach v of local value{
	    import delimited "D:\User_Data\Desktop\kriging\preprocessed_`poll'_`v'.csv",clear
		tostring(date),gen(date2)
		drop date
		rename date2 date
		joinby x y date using "D:\User_Data\Desktop\kriging\\`poll'_`v'_R.dta"
		save "D:\User_Data\Desktop\kriging\\`poll'_`v'_with_date_combined.dta",replace
		
	}
}
