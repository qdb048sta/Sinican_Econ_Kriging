clear
set more off
set linesize 255
cap log c
log using "D:\User_Data\Desktop\kan-2\kriging\regression_result\SO2_month_avg_regression_result_without_outlier_r.log", replace
cd "D:\User_Data\Desktop\kan-2\kriging"
use SO2_max_with_date_R,clear
display "--------------------`SO2'_`Daily Average'---------------------------"

//filter out only within target <=50km
geodist 25.1272 121.8156 y x,generate(num_distance_shenou)
geodist 24.1618378 120.6446744 y x, generate(num_distance_taichung)
geodist 22.6614546 120.2821877 y x, generate(num_distance_kaohsiung)
keep if num_distance_shenou<=50 | num_distance_taichung<=50 | num_distance_kaohsiung<=50

//eliminate outlier
egen p1=pctile(var1pred),p(1)
egen p99=pctile(var1pred),p(99)
drop if var1pred<p1 | var1pred>p99

//handling date and month
qui tostring date,generate(date2)
drop date
rename date2 date
qui gen year=substr(date,1,4)
qui gen R=date(date,"YMD")
qui gen month=month(R)
qui tostring(month),gen(str_month)
qui gen monthly=year+"m"+str_month
qui gen month_R=monthly(monthly,"YM")
	
	//generate dummy variables
qui gen D=1 if month_R>monthly("2007m9","YM")
qui replace D=0 if missing(D)
qui gen shenou_dummy=1 if num_distance_shenou<=50
qui replace shenou_dummy=0 if missing(shenou_dummy)
qui gen Dshenou = D*shenou_dummy
//get coordinate for absorb
qui gen string_x=string(x)
qui gen string_y=string(y)
qui egen coordinate=concat(string_x string_y),punct(" ")
//get monthly average

qui egen month_avg=mean(var1pred), by(month_R coordinate)
qui gen log_month_avg=log(month_avg)
//qui gen log_var1pred=log(var1pred)
//Label each variable
//label variable R "date since 2007/9/30"
label variable num_distance_shenou "distance to shenou in km"
label variable D "1 if date>2007/09/30 0 otherwise"
label variable shenou_dummy "1 if within shenou 50kms"
label variable coordinate "string coordinate"
save "`poll'_`type'_month_avg.dta", replace
keep month_avg log_month_avg month_R D Dshenou shenou_dummy coordinate
duplicates drop month_R coordinate, force  
regress month_avg month_R D Dshenou shenou_dummy,absorb(coordinate)
regress log_month_avg month_R D Dshenou shenou_dummy,absorb(coordinate)

display "--------------------`SO2'_`Daily Max'---------------------------"
use SO2_max_with_date_R,clear
//filter out only within target <=50km
geodist 25.1272 121.8156 y x,generate(num_distance_shenou)
geodist 24.1618378 120.6446744 y x, generate(num_distance_taichung)
geodist 22.6614546 120.2821877 y x, generate(num_distance_kaohsiung)
keep if num_distance_shenou<=50 | num_distance_taichung<=50 | num_distance_kaohsiung<=50

//eliminate outlier
egen p1=pctile(var1pred),p(1)
egen p99=pctile(var1pred),p(99)
drop if var1pred<p1 | var1pred>p99


//handling date and month
qui tostring date,generate(date2)
drop date
rename date2 date
qui gen year=substr(date,1,4)
qui gen R=date(date,"YMD")
qui gen month=month(R)
qui tostring(month),gen(str_month)
qui gen monthly=year+"m"+str_month
qui gen month_R=monthly(monthly,"YM")
	
	//generate dummy variables
qui gen D=1 if month_R>monthly("2007m9","YM")
qui replace D=0 if missing(D)
qui gen shenou_dummy=1 if num_distance_shenou<=50
qui replace shenou_dummy=0 if missing(shenou_dummy)
qui gen Dshenou = D*shenou_dummy
//get coordinate for absorb
qui gen string_x=string(x)
qui gen string_y=string(y)
qui egen coordinate=concat(string_x string_y),punct(" ")
//get monthly average

qui egen month_avg=mean(var1pred), by(month_R coordinate)
qui gen log_month_avg=log(month_avg)
//qui gen log_var1pred=log(var1pred)
//Label each variable
//label variable R "date since 2007/9/30"
label variable num_distance_shenou "distance to shenou in km"
label variable D "1 if date>2007/09/30 0 otherwise"
label variable shenou_dummy "1 if within shenou 50kms"
label variable coordinate "string coordinate"
save "`poll'_`type'_month_avg.dta", replace
keep month_avg log_month_avg month_R D Dshenou shenou_dummy coordinate
duplicates drop month_R coordinate, force  
regress month_avg month_R D Dshenou shenou_dummy,absorb(coordinate)
regress log_month_avg month_R D Dshenou shenou_dummy,absorb(coordinate)