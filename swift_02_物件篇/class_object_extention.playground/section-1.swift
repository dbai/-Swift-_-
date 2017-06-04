// Playground - noun: a place where people can play

import UIKit

//定義iPad類別
class iPad
{
    //提供wifi上網功能
    func connectInternetWithWifi()
    {
        println("透過Wifi連網...已連線!")
    }
    //提供3G上網功能
    func connectInternetWifi3G()
    {
        println("透過3G連網...已連線!")
    }
}


//透過extension關鍵字進行iPad進行功能的擴充，
//而不是透過iPad類別的修改
extension iPad
{
    //擴充一個藍牙上網功能
    func connectInternetWifiBluetooth()
    {
        println("透過Bluetooth連網...已連線!")
    }
}


var pad1 = iPad()
pad1.connectInternetWithWifi()
pad1.connectInternetWifi3G()
//呼叫此藍牙上網功能的方法，
//此方法是透過extension擴充出來的
pad1.connectInternetWifiBluetooth()