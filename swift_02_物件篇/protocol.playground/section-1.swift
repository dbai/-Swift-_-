// Playground - noun: a place where people can play

import UIKit


import Foundation

//將3G上網功能抽離成協定protocol，
//定義Internet3G上網功能
protocol Internet3G
{
    //包含is3GConnected是否已3G連網屬性，
    //特別的是，在協定protocol上的可變屬性或計算屬性，
    //都必預透過大括號"{}"指定要有get或set
    var is3GConnected:Bool {get set}
    //connectInternetWith3G方法3G連結功能
    //特別的是，協定protocol上的方法，
    //無需加上程式區塊"{}"，
    //只需定義方法的格式即可
    func connectInternetWith3G()
}



//透過冒號":"實作Internet3G協定，
//以表示掛載3G上網的功能
class iPad : Internet3G
{
    //實作is3GConnected屬性，
    //並給予初始值
    var is3GConnected:Bool = false
    //實作connectInternetWith3G()方法，
    //並加上大括號"{}"，
    //以程式的方式描述如何3G連網
    func connectInternetWith3G()
    {
        println("iPad透過3G上網…已連線!")
        is3GConnected = true
    }
}


//透過冒號":"實作Internet3G協定，
//以表示掛載3G上網的功能
class iPhone : Internet3G
{
    //實作is3GConnected屬性，
    //並給予初始值
    var is3GConnected:Bool = false
    //實作connectInternetWith3G()方法，
    //並加上大括號"{}"，
    //以程式的方式描述如何3G連網
    func connectInternetWith3G()
    {
        println("iPhone透過3G上網…已連線!")
        is3GConnected = true
    }
}


//透過冒號":"實作Internet3G協定，
//以表示掛載3G上網的功能
class iWatch : Internet3G
{
    //實作is3GConnected屬性，
    //並給予初始值
    var is3GConnected:Bool = false
    //實作connectInternetWith3G()方法，
    //並加上大括號"{}"，
    //以程式的方式描述如何3G連網
    func connectInternetWith3G()
    {
        println("iWatch透過3G上網…已連線!")
        is3GConnected = true
    }
}


//分別建立iPad、iphone與iWatch物件
let pad = iPad()
let phone = iPhone()
let watch = iWatch()

//此時因為iPad、iphone與iWatch皆實作Internet3G協定，
//因此皆可以進行connectInternetWith3G()連上網，
//並可存取is3GConnected屬性
pad.connectInternetWith3G()
println(pad.is3GConnected)
phone.connectInternetWith3G()
println(phone.is3GConnected)
watch.connectInternetWith3G()
println(watch.is3GConnected)


//協定也是一種型別，
//因此可以當作變數的型別使用，
let internet3GDevice1:Internet3G = pad
let internet3GDevice2:Internet3G = phone
let internet3GDevice3:Internet3G = watch

//並一視同仁，
//當作Internet3G的裝置進行操作
internet3GDevice1.connectInternetWith3G()
println(internet3GDevice1.is3GConnected)
internet3GDevice2.connectInternetWith3G()
println(internet3GDevice2.is3GConnected)
internet3GDevice3.connectInternetWith3G()
println(internet3GDevice3.is3GConnected)

