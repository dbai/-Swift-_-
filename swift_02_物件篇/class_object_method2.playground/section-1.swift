// Playground - noun: a place where people can play

import UIKit

//定義iPad類別
class iPad
{
    //將type類型屬性設為可選屬性
    var type:String? = ""
    //宣告一個回傳可選型別的getType方法，
    //其會回傳type屬性的值
    func getType() -> String?
    {
        return type
    }
}


//建立iPad物件，
//並存放在pad1變數中，
//type類型為iPad mini
let pad1:iPad = iPad()
pad1.type = "iPad mini"

//此時getType方法可透過問號"?"進行可選鏈結運算，
//因為其回傳的是一個可選型別的值，
//因此當回傳的可選值有字串值時，
//才存取isEmpty屬性
println(pad1.getType()?.isEmpty)


//宣告一個pad2可選變數，
//建立iPad物件，
//並存放在pad1變數中，
//type類型為iPad Air，
//注意，因pad2為可選變數，
//因此需要透過問號"?"進行可選鏈結運算，
//才能確保在pad2有物件時，
//在進行type屬性的設定
let pad2:iPad? = iPad()
pad2?.type = "iPad Air"

//此時透過問號"?"可進行一連串的可選鏈結運算，
//如此即可達到有值時，
//才會繼續往後運算的需求，
//即當pad2變數中有值時才呼叫getType方法，
//當getType方法回傳的可選值中有含字串值的話才存取isEmpty屬性
println(pad2?.getType()?.isEmpty)

