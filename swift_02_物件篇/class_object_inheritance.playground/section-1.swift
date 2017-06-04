// Playground - noun: a place where people can play

import UIKit

class iPad
{
    //iPad的屬性
    let id:String
    var type:String
    var capacity:Int
    
    init(){
        //透過NSUUID隨機產生代碼
        let UUID:NSUUID = NSUUID.UUID()
        let stringId:String = UUID.UUIDString
        //並設定為iPAD的id
        self.id = stringId
        
        
        //設定type與capacity的初始值
        self.type=""
        self.capacity=0
    }
    
    
    
    //提供wifi上網功能
    func connectInternetWithWifi()
    {
        println("透過Wifi連上網路…已連線")
    }
}

//建立iPad3G類別，
//並透過冒號":"繼承自iPad
class iPad3G : iPad
{
    //為iPad3G特地加上3G連網的功能
    func connectInternetWith3G()
    {
        println("透過3G連上網路…已連線")
    }
}

//建立iPad3G物件
let pad3g = iPad3G()


//除了iPad3G新增的connectInternetWifth3G功能，
//您會發現iPad3G也繼承了iPad的connectInternetWithWifi功能
pad3g.connectInternetWith3G()
pad3g.connectInternetWithWifi()


//當然，iPad的屬性也同樣會被繼承
//不論是定量變數或變量變數都會被繼承
pad3g.type = "iPad3G mini"
pad3g.capacity = 32

println(pad3g.id)
println(pad3g.type)
println(pad3g.capacity)