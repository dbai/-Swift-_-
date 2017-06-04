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


let pad1 = iPad()

//這是不能執行的，
//iPad3G繼承自iPad，
//而iPad3G新增的功能connectInternetWith3G，
//並不會影響到iPad原本的設計
pad1.connectInternetWith3G()
