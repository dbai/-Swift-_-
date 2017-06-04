// Playground - noun: a place where people can play

import UIKit


//在此設定baget
let badget = 12000

switch badget
    {
    //以...表示值的匹配區間，
    //1萬到1萬2的預算建議買mini
case 10000...12000:
    println("建議您買iPad mini")
    //以...表示值的匹配區間，
    //1萬2到1萬6的預算建議買Air
case 12001...16000:
    println("建議您買iPad Air")
default:
    println("不知您的預算是?")
}

