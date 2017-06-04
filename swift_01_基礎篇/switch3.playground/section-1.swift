// Playground - noun: a place where people can play

import UIKit


//使用值組表示您要買iPad的規格，
//在此帶入型號與容量
let spec = ("iPad mini", 16)

switch spec
    {
    //比對型號是iPad mini，容量是16G
case ("iPad mini", 16):
    println("至少10,000元")
    //比對型號是iPad Air，容量是32G
case ("iPad Air",32):
    println("至少14,000元")
    //使用底線(_)比對型號是不定，容量是16G
case (_, 32):
    println("至少12,000元")
    //比對型號是iPad Air，容量是不定
case ("iPad Air", _):
    println("至少12,000元")
    //其他規格待查價格
case (_,_):
    println("您要買的價格我要查一下")
}
