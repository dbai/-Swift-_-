// Playground - noun: a place where people can play

import UIKit

//定義iPad類別
class iPad
{
    
}
//定義iPhone類別
class iPhone
{
    
}

//結構stuct也可以定義泛型參數，
//在此定養泛型參數T
struct Box<T>
{
    private var item:T? = nil
    init(newItem:T?)
    {
        self.item = newItem
    }
    func unboxing() -> T?
    {
        return self.item
    }
}

//在使用時如何類別一樣，
//透過雙箭號"<>"即可代入型別至泛型參數中
var b1:Box<iPad> = Box<iPad>(newItem: iPad())
let pad:iPad? = b1.unboxing()

