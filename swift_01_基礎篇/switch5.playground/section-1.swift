// Playground - noun: a place where people can play

import UIKit


//使用值組表示您要買iPad的規格，
//在此帶入型號與容量
let spec = ("iPad mini", 16)

switch spec
    {
    //透過let或var，可在case上綁定匹配的值至變數中，
    //而變數中的值您可以在case的程式中使用
case (let type, var capacity):
    println("您要的規格是\(type)，容量\(capacity)G嗎?")
case (_, let capacity):
    println("您只要容量\(capacity)G，任何iPad都可以嗎?")
case (let type,32):
    println("您要的規格是\(type)，容量32G嗎?")
case (var type, _):
    println("您要的規格是\(type)，容量不限嗎?")
    //其他規格待查價格
case (_,_):
    println("您的規格是?")
}