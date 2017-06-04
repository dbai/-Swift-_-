// Playground - noun: a place where people can play

import UIKit


//定義InternetType，
//以表示連網的方式
enum InternetType
{
    case None //未連網
    case InternetWifi //wifi連網
    case Internet3G //3G連網
}

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
    //定義連網的狀態資訊
    var internetType = InternetType.None
    
    
    //為iPad3G特地加上3G連網的功能
    func connectInternetWith3G()
    {
        if(self.internetType == InternetType.InternetWifi)
        {
            println("中斷Wifi連網!")
        }
        
        println("透過3G連上網路…已連線")
        self.internetType = .Internet3G
    }
    
    //透過override，重新改寫繼承的connectInternetWithWifi()方法，
    //只需要將方法重新寫一遍，並在前方加上override，
    //即可進行改寫
    override func connectInternetWithWifi()
    {
        if(self.internetType == InternetType.Internet3G)
        {
            println("中斷3G連網!")
        }
        
        println("透過Wifi連上網路…已連線")
        self.internetType = .InternetWifi
    }
}


let pad3g1:iPad3G = iPad3G()

//向上轉型，
//即是繼承的類別iPad3G，
//轉型成被繼承的型別，
//這時可不使用as就可以轉型，
//因為swift是單一繼承的程式語言，
//因此可以直接轉型成iPad，
//並不強制需要使用as
let pad1:iPad = pad3g1