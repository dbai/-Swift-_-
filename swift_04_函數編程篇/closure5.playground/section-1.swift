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


//當然，
//您也可以將回傳的型別，
//設為是closure型別，
//以回傳一個closure，
//如此，就可以組合出
func produce(process:iPad -> iPad) -> () -> iPad
{
    //回傳iPad
    return
        {
            () in
            var pad1 = iPad()
            pad1 = process(pad1)
            return pad1
    }
}


//透過回傳另一個closure的方式，
//達到將組裝的程序帶入後，
//回傳此固定組裝流程的closure
var produceMini16Pad:()->iPad = produce(
    {
        pad in
        pad.type = "mini"
        pad.capacity = 16
        return pad
    }
)


//如此透過回傳的closure，
//可重複建立iPad mini 16G
let pad1 = produceMini16Pad()
println(pad1.id)
println(pad1.type)
println(pad1.capacity)

let pad2 = produceMini16Pad()
println(pad2.id)
println(pad2.type)
println(pad2.capacity)

let pad3 = produceMini16Pad()
println(pad3.id)
println(pad3.type)
println(pad3.capacity)