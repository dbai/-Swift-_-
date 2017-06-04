// Playground - noun: a place where people can play

import UIKit

//定義iPad類別
class iPad
{
    //將type類型屬性設為可選屬性
    var type:String? = ""
}


//建立iPad物件，
//並存放在pad1變數中，
//type類型為iPad mini
let pad1:iPad = iPad()
pad1.type = "iPad mini"

//此時type屬性也可透過問號"?"進行可選鏈結運算，
//當type屬性有字串值時，
//才存取isEmpty屬性
println(pad1.type?.isEmpty)


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
//即當pad2變數中有值時才存取type屬性，
//當type屬性有值時才存取isEmpty屬性
println(pad2?.type?.isEmpty)

