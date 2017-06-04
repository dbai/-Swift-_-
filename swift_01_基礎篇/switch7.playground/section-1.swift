// Playground - noun: a place where people can play

import UIKit


//在此設定baget，
//以千為單位
let badget = 11000

switch badget
    {
case 10000:
    //透過fallthrough無條件貫穿下一個case
    fallthrough
case 11000:
    fallthrough
case 12000:
    println("建議您買iPad mini")
case 13000:
    fallthrough
case 15000:
    fallthrough
case 16000:
    println("建議您買iPad Air")
default:
    println("不知您的預算是?")
}
