// Playground - noun: a place where people can play

import UIKit


//以for進行10連拍的程式，
//其中有3個區段，
//分別以分號(;)隔開，
//第1個區段只執行一次，
//可用以宣告計數變數，
//第2個區段用以判斷是否繼續執行的條件，
//第3個區段在每執行一次後皆會執行一次，
//可用以做計數變數的累計
for var index = 0; index < 9; index++
{
    println("拍照一次!")
    println("存檔!")
}





//for也可搭配in，
//進行某個區間次數的執行
for x in 1...10
{
    println("拍照第\(x)次!")
    println("存檔!")
}
