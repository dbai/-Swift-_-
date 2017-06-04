// Playground - noun: a place where people can play

import UIKit


//在此設定baget
let badget = 12000

switch badget
    {
    //以where子句判斷此case是否成立，
    //若成立即則執行此case中的程式，
    //而where子句就如同if一樣，
    //可做邏輯的判斷，
    //在此判斷為1萬到1萬2的預算建議買mini
case let x where x>=10000 && x<=12000:
    println("建議您買iPad mini")
    //在此判斷1萬2到1萬6的預算建議買Air
case let x where x>=12001 && x<=16000:
    println("建議您買iPad Air")
default:
    println("不知您的預算是?")
}

