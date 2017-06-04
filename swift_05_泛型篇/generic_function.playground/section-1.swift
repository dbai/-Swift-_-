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


//定義支援泛型的箱子Box，
//可裝入指定型別的裝置
class Box<T>
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

//函數也可以直接支援泛型，
//同樣透過雙箭號"<>"來定義泛型參數，
//在此建立一個裝箱boxing的方法，
//並透過雙箭號"<>"定義一個泛型參數T，
//此參數T會作為參數item的型別，
//最後會回傳一個箱子Box，
//此箱子Box的泛型會是boxing函數所指定的泛型型別T
func boxing<T>(item:T) -> Box<T>
{
    let b:Box<T> = Box<T>()
    b.boxing(item)
    return b
}

//建立一台iPad
let pad = iPad()
//透過裝箱boxing函數將iPad裝箱，
//特別的是boxing會透過參數的型別，
//推論泛型的型別為iPad
let b1:Box<iPad> = boxing(pad)

//同樣的，也可建立一台iPhone
let phone = iPhone()
//並為iPhone裝箱
let b2:Box<iPhone> = boxing(phone)