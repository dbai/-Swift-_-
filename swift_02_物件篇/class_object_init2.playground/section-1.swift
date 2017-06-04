// Playground - noun: a place where people can play

import UIKit

class iPad
{
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
    
    
    //另外提供一個有參數的init，
    //以在建立iPad物件時，
    //可指定type與capacity的值，
    //當然，一個類別是可以擁有多個init的，
    //只要參數的個數不同，
    //或參數的個數相同但型別不同的init，
    //皆可同時存在
    init(newType: String, newCapacity:Int) {
        //透過NSUUID隨機產生代碼
        let UUID:NSUUID = NSUUID.UUID()
        let stringId:String = UUID.UUIDString
        //並設定為iPAD的UDID
        self.id = stringId
        
        
        self.type = newType
        self.capacity = newCapacity
    }
}


//使用有參數的init建構式建立iPad物件，
//帶入參數newType與newCapacity，
//與方法不同的是第1個參數就會自動建立外部參數名稱，
//而不是從第2個參數才開始自動建立外部參數名稱，
let pad1 = iPad(newType: "iPad mini", newCapacity: 16)
println("\(pad1.id)")
println("\(pad1.type)")
println("\(pad1.capacity)")


//當然，有參數的init可以與沒參數的init同時存在，
//因此您仍可使用沒有參數的init來建立物件
let pad2 = iPad()