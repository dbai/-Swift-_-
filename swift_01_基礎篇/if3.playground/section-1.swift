// Playground - noun: a place where people can play

import UIKit


//您可將money設定成nil，
//以查看不一樣的執行結果
let money:Int? = 13000


//let綁定可選x變數，
//若不為nil，
//則表示條件成立，
//以執行if包含的程式
if let x = money
{
    println("x中有錢，不為nil")
}