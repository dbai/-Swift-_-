// Playground - noun: a place where people can play

import UIKit

//建立iPad
class iPad
{
    func connectInternetWithWifi()
    {
        println("iPad透過Wifi上網...已連線")
    }
}

//建立iPhone
class iPhone
{
    func connectInternetWithWifi()
    {
        println("iPhone透過Wifi上網...已連線")
    }
}

//建立iWatch
class iWatch
{
    func connectInternetWithWifi()
    {
        println("iWatch透過Wifi上網...已連線")
    }
}


//建立4台iPad物件
let kentPad = iPad()
let kentPhone = iPhone()
let ginaPhone = iPhone()
let ginaWatch = iWatch()


//透過[:]建立空的Dictionary，
//此時的key會被推論成AnyObject型別
var dic:Dictionary = [:]

//新增key:value，
//"kent"對應至kentPad
dic["kent"] = kentPad

//對即存的key作指派，
//則會進行修改，
//"kent"將會變更對應至kentPhone
dic["kent"] = kentPhone


//updateValue()也可新增key:value，
//"gina"對應至ginaPhone
dic.updateValue(ginaPhone, forKey:"gina")


//對即存的key作updateValue()，
//則會進行修改，
//"gina"將會變更對應至ginaWatch
dic["gina"] = ginaWatch



//移除key:value，
//透過removeValueForKey()，
//即可移除
dic.removeValueForKey("kent")