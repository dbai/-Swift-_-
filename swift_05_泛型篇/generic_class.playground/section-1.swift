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


//為了讓箱子Box可以裝入不同類型的東西，
//同時又能夠限定此Box可裝入的類型，
//因此使用泛型的技巧，
//讓可裝入箱子Box的東西型別參數化，
//以在後續使用箱子Box時決定要帶入什麼東西的型別，
//在類別名稱箱子Box後，
//即可透過雙箭號”<>”定義泛型參數，
//在此定義一個泛型參數T
class Box<T>
{
    //泛型參數T，
    //將可以取得類別中任何表示型別的位置，
    //因此在此宣告一個item屬性，
    //將可以裝入T泛型型別的物件或資料
    private var item:T? = nil
    
    //提供裝箱方法 - boxing，
    //其中的參數的型別，
    //也可用泛型型別T來取代
    func boxing(newItem:T)
    {
        self.item = newItem
    }
    
    //提供拆箱方法 - unboxing，
    //在此回傳泛型T型別的物件或資料
    func unboxing() -> T?
    {
        return self.item
    }
}


//在此宣告一個專門裝iPad物件的箱子Box，
//而代入的泛型型別即是透過雙箭號”<>”加型別，
//"Box<iPad>"表示此為iPad專屬的箱子Box，
//當然在建立箱子Box物件時也可透過雙箭號”<>”指定箱子Box的泛型型別
//代入後的iPad型別，
//將會取帶所有T泛型參數的位置，
//以決定屬性、方法參數、回傳值的型別
var b1:Box<iPad> = Box<iPad>()
//裝箱boxing方法，
//因泛型決定了方法上參數的型別為iPad，
//因此代入iPad物件是沒問題的
b1.boxing(iPad())
//拆箱unboxing方法的回傳值，
//也因為泛型為iPad，
//因此會明確的回傳iPad型別的物件
let pad:iPad? = b1.unboxing()


//現在來製作另一個iPhone專屬的箱子Box，
//只需變更代入泛型參數的型別為iPhone，
//即可建立iPhone專屬的Box
var b2:Box<iPhone> = Box<iPhone>()
//當然，不論在裝箱boxing或拆箱unboxing，
//皆只能接收和回傳iPhone的物件
b2.boxing(iPhone())
let iphone:iPhone? = b2.unboxing()



//當泛型參數型別確認後，
//將不可在變更，
//這也確保了型別的安全，
//表示此箱子Box不會放入其他不同型別的東西，
//因此下列這行程式是錯的，
//您不可放入一個iPad至iPhone專屬的箱子Box中
b2(iPad())
