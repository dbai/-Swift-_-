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

//定義produce函數，
//其中帶入closure參數 - process，
//用以組裝iPad
func produce(process:iPad -> iPad) -> iPad
{
    //建立一台iPad
    var pad1 = iPad()
    
    //由assembler進行iPad組裝，
    //並取得組裝後的iPad
    pad1 = process(pad1)
    
    //回傳iPad
    return pad1
}

//宣告一個closure型別iPad->iPad的變數air32Process，
//表示會帶入一個iPad參數，
//並回傳iPad物件
let air32Process:iPad->iPad =

{
    //透過型別的推論，
    //可以透過air32Process參數可接收的closure型別，
    //推論出pad參數的型別為iPad，
    //而不需要透過冒號":"來指定型別
    pad -> iPad in
    pad.type = "iPad Air"
    pad.capacity = 32
    return pad
}

let pad1 = produce(air32Process)
println(pad1.id)
println(pad1.type)
println(pad1.capacity)




//當然closure也可以直接建立，
//直接傳入參數中
let pad2 = produce(
    //在此自訂組裝出類型為iPad mini，16G的iPad
    {
        //當然，pad參數的型別，
        //也可直接透過produce()函數的closure參數型別，
        //推論出pad參數的型別為iPad
        pad -> iPad in
        pad.type = "iPad mini"
        pad.capacity = 16
        return pad
    }
    
)
println(pad2.id)
println(pad2.type)
println(pad2.capacity)




//當然closure也可以直接建立，
//直接傳入參數中
let pad3 = produce(
    //在此自訂組裝出類型為iPad mini，16G的iPad
    {
        //甚至透過型別的推論，
        //會後明確的知道回傳值一定是iPad，
        //因此可直接寫pad參數，
        //省去後方的回傳值宣告 "-> iPad"
        pad in
        pad.type = "iPad mini"
        pad.capacity = 32
        return pad
    }
)

println(pad3.id)
println(pad3.type)
println(pad3.capacity)