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




//建立iPad3G的物件，
//並轉型iPad
let pad1:iPad = iPad3G()
//透過as?將pad1型別的物件，
//轉型成iPad3G型別的物件，
//在此會轉型成功，
//pad3g1會有物件，
//原因是此物件原本在建立時就是一個iPad3G的物件，
//因此可以還原視為iPad3G的物件
let pad3g1:iPad3G? = pad1 as? iPad3G
println(pad3g1)


//建立的就是一個iPad的物件
let pad2:iPad = iPad()
//這時可透過可選轉型as?
//會得到nil，
//因為原本建立的就是一個iPad物件，
//本質上就不是iPad3G物件，
//因此不能轉型，
//得到nil
let pad3g2:iPad3G? = pad2 as? iPad3G
println(pad3g2)