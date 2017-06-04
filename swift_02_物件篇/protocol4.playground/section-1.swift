// Playground - noun: a place where people can play

import UIKit


protocol InternetWifi    {    func connectInternetWithWifi()}//協定間也可透過冒號”:”繼承的方式進行廣充，//如此Internet3G即會擁有InternetWifi所定義的屬性與方法protocol Internet3G : InternetWifi    {    var is3GConnected:Bool{get set}    func connectInternetWith3G()}//類別也可以多重實作一個以上的協定，//只要在冒號”:”使用逗號”,”加入第2個協定就可以了，//當然，若有更多的協定要同時實作，//只需要在使用逗號”,”即可在實作另一個協定class iPad:InternetWifi, Internet3G{}