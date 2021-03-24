log using "D:\User_Data\Downloads\teanage_survey\teanage_survey.log",replace

use "D:\User_Data\Downloads\青少年調查\C00176_1\中文\j3w1s_Jan2020.dta"
display "國三樣本/第一波/青少年問卷"
foreach i of num 1/9{
capture sum as30100`i'
if _rc==0{
sum as30100`i'
}
}
use "D:\User_Data\Downloads\青少年調查\C00176_2\user20180108\j3w1p_Dec2008.dta"
display "國三樣本/第一波/家長問卷"
foreach i of num 1/9{
capture sum ap20500`i'
if _rc==0{
sum ap20500`i'
}
}

use "D:\User_Data\Downloads\青少年調查\C00176_3\C00176_3\j3w1t_Jan2020.dta"
display"國三樣本/第一波/老師問卷"
//no self-esteem questions

use "D:\User_Data\Downloads\青少年調查\C00176_4\中文\j1w1s_Jan2020.dta"
display "國一樣本/第一波/青少年問卷"
foreach i of num 1/9 {
capture sum as30900`i'
if _rc==0{
sum as30900`i'
}
}

use "D:\User_Data\Downloads\青少年調查\C00176_5\user20180108\j1w1p_Jul2008.dta"
display "國一樣本/第一波/家長問卷"
foreach i of num 1/9 {
capture sum ap20300`i'
if _rc==0{
sum ap20300`i'
}
}
use "D:\User_Data\Downloads\青少年調查\C00176_6\C00176_6\j1w1t_Jan2020.dta"
display "國一樣本/第一波/老師問卷"
//no self-esteem question 

use "D:\User_Data\Downloads\青少年調查\C00177_1\j3w2s_Feb2019.dta"
display "國三樣本/第二波/青少年問卷"
foreach i of num 1/9{
// no self-esteem question
}

use "D:\User_Data\Downloads\青少年調查\C00177_2\中文\j1w2s_Jan2020.dta"
display "國一樣本/第二波/青少年問卷"
foreach i of num 1/9 {
capture sum bs60100`i'
if _rc==0{
sum bs60100`i'
}
}

use "D:\User_Data\Downloads\青少年調查\C00177_3\C00177_3\j1w2t_Jan2020.dta"
display "國一樣本/第二波/導師問卷"
foreach i of num 1/9 {
// no self-estemm question
}

use "D:\User_Data\Downloads\青少年調查\C00178_1\user20180108\j3w3s_Mar2009.dta"
display "國三樣本/第三波/青少年問卷"
foreach i of num 1/9 {
// no self-esteem questions
}

use "D:\User_Data\Downloads\青少年調查\C00178_2\中文\j1w3s_Jan2020.dta"
display "國一樣本/第三波/青少年問卷"
foreach i of num 1/9 {
capture sum cs91400`i'
if _rc==0{
sum cs91400`i'
}
}

use "D:\User_Data\Downloads\青少年調查\C00178_3\user20180108\j1w3p_Aug2008.dta"
display "國一樣本/第三波/家長問卷"
foreach i of num 1/9 {
// no self-esteem questions
}
use "D:\User_Data\Downloads\青少年調查\C00178_4\C00178_4\j1w3t_Jan2020.dta"
display "國一樣本/第三波/老師問卷"
foreach i of num 1/9 {
//no self-esteem questions
}

use "D:\User_Data\Downloads\青少年調查\C00179_1\j3w4s_Feb2019.dta"
display "國三樣本/第四波/青少年問卷"
foreach i of num 1/9 {
capture sum ds60700`i'
if _rc==0{
sum ds60700`i'
}
}

use "D:\User_Data\Downloads\青少年調查\C00179_2\user20180108\j3w4p_Aug2010.dta"
display "國三樣本/第四波/家長問卷"
foreach i of num 1/9 {
//no self-estemm questions
}

use "D:\User_Data\Downloads\青少年調查\C00179_3\j1w4s_Jan2019.dta"
display "國一樣本/第四波/青少年問卷"
foreach i of num 1/9 {
capture sum ds06900`i'
if _rc==0{
sum ds06900`i'
}
}

use "D:\User_Data\Downloads\青少年調查\C00214_1\j3w5s_Feb2019.dta"
display "國三樣本/第五波/青少年問卷"
foreach i of num 1/9 {
// no self-esteem questions
}

use "D:\User_Data\Downloads\青少年調查\C00214_3\j1w5s_Jan2019.dta"
display "國一樣本/第五波/青少年問卷"
foreach i of num 1/9 {
//no self-esteem questions
}
use "D:\User_Data\Downloads\青少年調查\C00238_1\j3w6s_Feb2019.dta"
display "國三樣本/第六波/青少年問卷"
foreach i of num 1/9 {
//no self-esteem questions
}
use "D:\User_Data\Downloads\青少年調查\C00238_2\user20180108\j3w6p_Feb2012.dta"
display "國三樣本/第六波/家長問卷"
foreach i of num 1/9 {
capture sum fp31100`i'
if _rc==0{
sum fp31100`i'
}
}

use "D:\User_Data\Downloads\青少年調查\C00238_3\j1w6s_Jan2019.dta"
display "國一樣本/第六波/青少年問卷"
foreach i of num 1/9 {
capture sum fs60800`i'
if _rc==0{
sum fs60800`i'
}
}

use "D:\User_Data\Downloads\青少年調查\C00238_4\user20180108\j1w6p_Jun2011.dta"
display "國一樣本/第六波/家長問卷"
foreach i of num 1/9 {
// no self-esteem questions
}
use "D:\User_Data\Downloads\青少年調查\C00250_1\j1w7s_Jan2019.dta"
display "國一樣本/第七波/青少年問卷"
foreach i of num 1/9{
//no self esteem questions
}

use "D:\User_Data\Downloads\青少年調查\C00250_2\j3w7s_Feb2019.dta"
display "國三樣本/第七波/青少年問卷"
foreach i of num 1/9 {
capture sum gs34000`i'
if _rc==0{
sum gs34000`i'
}
}

use "D:\User_Data\Downloads\青少年調查\C00250_3\user20180108\j3w7p_Jun2013.dta"
display "國三樣本/第七波/家長問卷"
foreach i of num 1/9{
capture sum gp40800`i'
if _rc==0{
sum gp40800`i'
}
}

use "D:\User_Data\Downloads\青少年調查\C00272_1\user20180108\j1w8p_June2012.dta"
display "國一樣本/第八波/家長問卷"
foreach i of num 1/9{
capture sum hp35600`i'
if _rc==0{
sum hp35600`i'
}
}
use "D:\User_Data\Downloads\青少年調查\C00272_2\j1w8s_Jan2019.dta"
display "國一樣本/第八波/青少年問卷"
foreach i of num 1/9{
capture sum hs08100`i'
if _rc==0{
sum hs08100`i'
}

}

use "D:\User_Data\Downloads\青少年調查\C00272_3\j3w8s_Feb2019.dta"
display "國三樣本/第八波/青少年問卷"
foreach i of num 1/9{
//no self-esteem questions
}

use "D:\User_Data\Downloads\青少年調查\D00124_1\j1w9s_Jan2019.dta"
display "國一樣本/第九波/青少年問卷"
foreach i of num 1/9{
capture sum is07700`i'
if _rc==0{
sum is07700`i'
}
}
use "D:\User_Data\Downloads\青少年調查\D00124_2\user20180108\j1w9p_Nov2016.dta"
display "國一樣本/第九波/家長問卷"
foreach i of num 1/9{
//no self-esteem questions
}

use "D:\User_Data\Downloads\青少年調查\D00163\D00163\TYP2011_Jan2019.dta"
display "成人合併樣本第一波"
foreach i of num 1/9{
capture sum m1s08800`i'
if _rc==0{
sum m1s08800`i'
}

}

use "D:\User_Data\Downloads\青少年調查\D00171\公共版\TYP2014_Nov2019.dta"
display "成人合併樣本第二波"
foreach i of num 1/9{
capture sum m2s07100`i'
if _rc==0{
sum 	m2s07100`i'

}
}

log close











