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


//建立4台裝置
let kentPad = iPad()
let ginaPhone = iPhone()
let ericWatch = iWatch()


//以"key:value"的方式，
//將iPad保存，
//而key即可以用擁有者的姓名，
//value即是對應的iPad物件，
//多個"key:value"，
//則以遏號","隔開即可
let dic:Dictionary = ["kent":kentPad, "gina":ginaPhone, "eric":ericWatch]

//這時即可透過中括號"[]"+key的方式取出，
//如此就可知以攡有者姓名的方式，
//取出對應裝置，
//取出時，因存入時的value型別不一致，
//因此取出時會以AnyObject型別的方式取出，
//此時需透過as將物件轉型為原來的物件
let pad:iPad = dic["kent"] as iPad
pad.connectInternetWithWifi()

let phone:iPhone = dic["gina"] as iPhone
phone.connectInternetWithWifi()

let watch:iWatch = dic["eric"] as iWatch
watch.connectInternetWithWifi()