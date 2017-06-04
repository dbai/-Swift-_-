// Playground - noun: a place where people can play

import UIKit

class iPad
{
    let id:String
    var type:String
    var capacity:Int
    
    init(){
        let UUID:NSUUID = NSUUID.UUID()
        let stringId:String = UUID.UUIDString
        self.id = stringId
        
        self.type=""
        self.capacity=0
    }
}


//多參數的closure，
//需使用小括號來宣告參數的個數與型別，
//中間以逗號","隔開即可，
//此範例即有1個Int型別參數與iPad型別參數(Int, iPad) -> iPad
func produce(process:(Int, iPad) -> iPad) -> iPad
{
    //建立一台iPad
    var pad1 = iPad()
    
    //呼叫時，則需在小括號"()"內，
    //加入對應的參數與值
    pad1 = process(16, pad1)
    
    //回傳iPad
    return pad1
}


let pad1 = produce(
    {
        //建立closure，
        //也是以小括號"()" + 逗號","的方式，
        //帶入多個參數
        (cap:Int, pad:iPad) -> iPad
        in
        pad.type = "Air"
        pad.capacity = cap
        return pad
    }
)

println(pad1.id)
println(pad1.type)
println(pad1.capacity)