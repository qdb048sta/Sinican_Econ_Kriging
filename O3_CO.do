local POLL="O3 CO"
local VALUE="avg max"
foreach p of local POLL{
foreach v of local VALUE{
csvconvert E:\PM\Kriging\R_Kriging\\`p'\\`v', replace output_file(D:\User_Data\Desktop\kriging\\_`p'_`v'_R.dta)
}
}
