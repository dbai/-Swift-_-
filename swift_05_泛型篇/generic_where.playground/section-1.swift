// Playground - noun: a place where people can play

import UIKit

//定義iDevice電子裝置類別
class iDevice
{
    var x:Int = 0
    var y:Int = 0
}
//定義iPad類別，並繼承自iDevice
class iPad : iDevice
{
    
}
//定義iPhone類別，並繼承自iDevice
class iPhone : iDevice
{
    
}


//定義箱子Box類別，
//並使用雙箭號"<>"定義泛型參數T，
//為了讓箱子只能裝下電子裝置，
//這時可在宣告完泛型參數T的後方，
//使用where子句來限制T必須繼承自iDevice，
//只要加上"where T:iDevice"即可
class Box<T where T:iDevice>
{
    private var item:T? = nil
    
    func boxing(newItem:T)
    {
        self.item = newItem
    }
    
    func unboxing() -> T?
    {
        return self.item
    }
}

//製作2個箱子Box，
//一個是專門裝iPad的箱子，
//另一個是專門裝iPhone的箱子，
//因為iPad與iPhone皆是繼承自iDevice，
//符合泛型參數where的限製條件，
//因此可以為箱子Box的泛型
var b1:Box<iPad> = Box<iPad>()
var b2:Box<iPhone> = Box<iPhone>()


//定義一個阿貓類別
class Cat
{
}

//因阿貓類別Cat，
//並沒有繼承自iDevice，
//因此不符合where的限製條件，
//在編輯時就會錯，
//並告訴您Cat並沒有繼承自iDevice，
//如此透過where子句的限制，
//即可製作電子裝置iDevice專用的箱子了
var b3:Box<Cat> = Box<Cat>()
