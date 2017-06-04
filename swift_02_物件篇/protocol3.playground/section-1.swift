// Playground - noun: a place where people can play

import UIKit


protocol InternetWifi{    func connectInternetWithWifi()}//協定間也可透過冒號”:”繼承的方式進行廣充，//如此Internet3G即會擁有InternetWifi所定義的屬性與方法protocol Internet3G : InternetWifi    {    var is3GConnected:Bool{get set}    func connectInternetWith3G()}//協定間是可以多重繼承的，//若要進行多重繼承，//只需要透過逗號”,”的方式，//即可進行一個協定以上的繼承，//當然，所有進繼承的協定上的屬性與方法，//皆會被繼承protocol Internet3GAndWifi:InternetWifi, Internet3G{}