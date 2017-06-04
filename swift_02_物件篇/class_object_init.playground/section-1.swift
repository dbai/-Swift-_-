// Playground - noun: a place where people can play

import UIKit

class iPad
{
    //原先在宣告屬性的同時，
    //必須直接使用指派運算式"="，
    //來給予定量屬性與變量屬性的初始值的，
    //但因為接下來有init建構式，
    //因此最慢可以延後至建構式時設定初始值
    let id:String
    var type:String
    var capacity:Int
    
    
    //init()是iPad物件在建立時會呼叫的特殊方法，
    //又名建構式，
    //在建立iPad物件時，
    //即可透過此建構式完成id識別碼，
    //初始值的設定
    init(){
        //透過NSUUID隨機產生代碼
        let UUID:NSUUID = NSUUID.UUID()
        let stringId:String = UUID.UUIDString
        //並設定為iPAD的UDID
        self.id = stringId
        
        
        //設定type與capacity的初始值
        self.type=""
        self.capacity=0
    }
}



//當iPad()，
//即會呼叫init()建構式
let pad1 = iPad()


//此時您查看id，
//即會發現id已透過init()建構式，
//完成了出廠所需的初始值設定
println(pad1.id)