log using "D:\User_Data\Downloads\teanage_survey\teanage_survey.log",replace
local files: dir "D:\User_Data\\Downloads\\teanage_survey" file "*.dta"
foreach file of local files{
display "----------------`file'-----------------"
use "D:\User_Data\Downloads\teanage_survey\\`file'", clear
foreach i of num 1/9 {
capture sum as30100`i'
if _rc==0{
sum as30100`i'
}
}
}
log close
