clear
local POLL="NOx NO2 O3 CO"
local value="avg max"
foreach poll of local POLL{
    foreach v of local value{
		cd "E:\PM\Kriging\R_Kriging\\`poll'\\`v'"
	    local files: dir "E:\PM\Kriging\R_Kriging\\`poll'\\`v'" files "*.csv"
		save "D:\User_Data\Desktop\kriging\\_`poll'_`v'_R.dta", replace emptyok
		foreach f of local files{
		    import delimited "E:\PM\Kriging\R_Kriging\\`poll'\\`v'\\`f'",clear
			gen date="`f'"
			append using "D:\User_Data\Desktop\kriging\\_`poll'_`v'_R.dta",force
			save "D:\User_Data\Desktop\kriging\\_`poll'_`v'_R.dta",replace
			sleep 2000
		}
		use "D:\User_Data\Desktop\kriging\\_`poll'_`v'_R.dta",clear
		gen date2=substr(date,1,8)
		drop date 
		rename date2 date
		save "D:\User_Data\Desktop\kriging\\_`poll'_`v'_R.dta",replace
	    
	}
	    
}
