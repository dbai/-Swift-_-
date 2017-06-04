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

//透過中括號"[]"即可建立一個陣列物件，
//並在中括號中將iPad、iPhone與iWatch物件放入其中保存，
//而同一個陣列可以保存多個不同的型別物件的原因，
//在此所有保存在Array中的物件，
//皆將轉型成AnyObject型別，
//因此可以統一保存
let devices:Array = [pad1, phone1, watch1]


//透過count屬性，
//得知陣列中的物件個數
for var i=0; i<devices.count; i++
{
    //將物件自陣列中取出時，
    //只需透過中括號"[]"，
    //其中放入索引值即可拿出對應位置的物件，
    //當存入的物件型別不一致時，
    //取出的物件皆AnyObject型別的物件，
    //因此可透過if搭配let與as?，
    //可選性的轉成iPad型別的物件，
    //若是iPad型別物件，
    //則pad變數中即不為nil，
    //if條件即成立，
    //即會執行大括號"{}"中的程式
    if let pad = devices[i] as? iPad
    {
        pad.connectInternetWithWifi()
    }
    
    
    //檢測是不是iPhone型別的物件，
    //若是則執行大括號"{}"中的程式
    if let phone = devices[i] as? iPhone
    {
        phone.connectInternetWithWifi()
    }
    
    
    //檢測是不是iWatch型別的物件，
    //若是則執行大括號"{}"中的程式
    if let watch = devices[i] as? iWatch
    {
        watch.connectInternetWithWifi()
    }
}
