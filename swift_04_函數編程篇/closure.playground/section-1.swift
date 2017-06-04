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



//在produce函數中，
//宣告closure參數 - process，
//以作為組裝iPad物件時使用的組裝流程，
//produce函數最後回傳組裝後的iPad物件，
//而process closure型別 iPad -> iPad，
//表示此closure會接收一個iPad的參數值，
//並回傳一個iPad物件，
//如此即可由closure來決定要如何組裝iPad，
//讓呼叫produce的使用者，
//可自行決定組裝iPad的邏輯，
//而不需要裝組裝邏輯固定死在produce函數中
func produce(process:iPad -> iPad) -> iPad
{
    //建立一台iPad
    var pad1 = iPad()
    
    //由process進行iPad組裝，
    //並取得組裝後的iPad，
    //process參數中存放的即是一個closure，
    //closure即如同一個函數，
    //加上小括號"()"與所需的參數即可呼叫
    pad1 = process(pad1)
    
    //回傳iPad
    return pad1
}

//宣告一個closure型別iPad->iPad的變數air32Process，
//而closure就好像一個函數一樣，
//只是它沒有名字，
//因此只定義傳入的參數型別，
//與回傳的參數型別，
//即iPad->iPad
let air32Process:iPad->iPad =

//透過closure表示式，
//以大括號"{(參數) -> 回傳值 in 執行的程式}"建立closure，
//用以組裝類型為iPad Air，32G的iPad
{
    //在in關鍵字前，
    //定義了closure的型別，
    //(pad:iPad)為參數，
    //而箭頭"->"為回傳值型別
    //為此closure的參數
    (pad:iPad) -> iPad in
    //在in後方接的就是closure的程式主體，
    //即closure執行時的內容，
    //此closure將組裝類型為iPad Air，32G的iPad，
    //最後使用return回傳組裝後的iPad物件
    pad.type = "iPad Air"
    pad.capacity = 32
    return pad
}

//呼叫produce建立iPad物件，
//並透過closure自訂iPad的組裝程序，
//組裝出類型為iPad Air，16G的iPad
let pad1 = produce(air32Process)
println(pad1.id)
println(pad1.type)
println(pad1.capacity)




//當然closure也可以直接建立，
//直接傳入參數中
let pad2 = produce(
    //在此自訂組裝出類型為iPad mini，16G的iPad
    {
        (pad:iPad) -> iPad in
        pad.type = "iPad mini"
        pad.capacity = 16
        return pad
    }
    
)
println(pad2.id)
println(pad2.type)
println(pad2.capacity)