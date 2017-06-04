import UIKit

class iPad
{
    let id:String
    var type:String
    var capacity:Int
    
    
    init(){
        //透過NSUUID隨機產生代碼
        let UUID:NSUUID = NSUUID()
        let stringId:String = UUID.uuidString
        //並設定為iPAD的id
        self.id = stringId
        
        
        //設定type與capacity的初始值
        self.type=""
        self.capacity=0
    }
    
    init(newType: String, newCapacity:Int) {
        //透過NSUUID隨機產生代碼
        let UUID:NSUUID = NSUUID()
        let stringId:String = UUID.uuidString
        //並設定為iPAD的id
        self.id = stringId
        
        
        self.type = newType
        self.capacity = newCapacity
    }
}

//iPadX繼承自iPad
class iPadX : iPad
{
    //有個xRate變量屬性
    var xRate:Int
    
    //當自訂init建構式時
    override init(){
        //先設定完目前物件屬性的初始值
        xRate = 10
        //最後一行必須透過super關鍵字，
        //去呼叫iPad的init()建構式，
        //注意，一定要是最後一行
        super.init()
    }
    
    
    //當自訂有參數的init建構式時
    init(newXType:String, newXCapacity:Int){
        //先設定完目前物件屬性的初始值
        xRate = 10
        //您有可以透過super呼叫有參數的init建構式，
        //但注意，一定要是最後一行
        super.init(newType:newXType, newCapacity:newXCapacity)
    }
}


let padX1 = iPadX()
print("\(padX1.id)")
print("\(padX1.type)")
print("\(padX1.capacity)")
print("\(padX1.xRate)")


let padX2 = iPadX(newXType:"iPadX mini", newXCapacity:32)
print("\(padX2.id)")
print("\(padX2.type)")
print("\(padX2.capacity)")
print("\(padX2.xRate)")
