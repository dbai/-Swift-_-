// Playground - noun: a place where people can play

import UIKit


protocol InternetWifi{    func connectInternetWithWifi()
}



//協定間也可透過冒號”:”繼承的方式進行廣充，//如此Internet3G即會擁有InternetWifi所定義的屬性與方法protocol Internet3G : InternetWifi{    var is3GConnected:Bool{get set}    func connectInternetWith3G()}