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
    
    //由process進行iPad組裝，
    //並取得組裝後的iPad
    pad1 = process(pad1)
    
    //回傳iPad
    return pad1
}


//若函數中的最後一個參數帶入的是closure，
//則此closure可以使用"尾隨closure的方式"，
//將closure寫在小括號"()"之後，
//其會自動將closure帶入函數最後一個參數中，
//此技巧即是"尾隨於函數後的closure"
let pad1 = produce()
    {
        pad in
        pad.type = "Air"
        pad.capacity = 32
        return pad
}

//甚至因為此produce函數只有一個closure參數，
//produce函數可省去小括號，
//直接帶入closure
let pad2 = produce
    {
        pad in
        pad.type = "Air"
        pad.capacity = 32
        return pad
}