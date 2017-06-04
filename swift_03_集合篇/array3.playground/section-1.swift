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


//分別建立iPad、iPhone與iWatch物件
let pad1 = iPad()
let phone1 = iPhone()
let watch1 = iWatch()

//建立一個空的陣列
var devices:Array = []

//檢查陣列是否為空
println(devices.isEmpty)

//加入物件至陣列的最後方
devices.append(pad1)
devices.append(phone1)

//加入物件至指定位置
devices.insert(watch1, atIndex:1)

//移除最後一個位置的物件
devices.removeLast()
//移除恉定位置的物件
devices.removeAtIndex(0)