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


//將iPad3G的物件，
//透過as關鍵字轉型為iPad的物件，
//以視為iPad的身份去看待此物件
let pad1:iPad = pad3g1 as iPad

//當然，因為iPad只定義的wifi上網功能，
//因此能透過wifi上網
pad1.connectInternetWithWifi()

//但因目前以將此物件視為iPad的身份看待，
//因此不能無法使用iPad3G的3G連網功能，
//因此下列這行程式是錯的
//pad1.connectInternetWith3G()


//當然，此pad物件原本就是iPad3G的物件，
//因此可以在透過as轉型還原成iPad3G的身份看待，
//如此即可使用原本的3G連網功能了
let pad3g2:iPad3G = pad1 as iPad3G
pad3g2.connectInternetWith3G()