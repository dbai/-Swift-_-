// Playground - noun: a place where people can play

import UIKit

//所有裝置的父類別
class iDevice
{
    let mark = "Apple出品"
}

//建立iPad，並繼承自iDevice
class iPad : iDevice
{
    func connectInternetWithWifi()
    {
        println("iPad透過Wifi上網...已連線")
    }
}

//建立iPhone，並繼承自iDevice
class iPhone : iDevice
{
    func connectInternetWithWifi()
    {
        println("iPhone透過Wifi上網...已連線")
    }
}

//建立iWatch，並繼承自iDevice
class iWatch : iDevice
{
    func connectInternetWithWifi()
    {
        println("iWatch透過Wifi上網...已連線")
    }
}

//製作一個生產裝置函數function，
//函數與類別上的方法相同，
//有參數也有回傳值
func produce(kind:String) -> iDevice?
{
    //在此依照傳入的kind類型，
    //來建立裝置
    switch kind
        {
    case "iPad":
        return iPad()
    case "iPhone":
        return iPhone()
    case "iWatch":
        return iWatch()
        //若無法對應，則回傳nil
    default:
        return nil
    }
}

//使用produce函數，
//建立各種不同的裝置
let pad = produce("iPad") as iPad
let phone = produce("iPhone") as iPhone
let watch = produce("iWatch") as iWatch