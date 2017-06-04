// Playground - noun: a place where people can play

import UIKit


//列舉宣告iPad的類型
enum IPadType
{
    case Mini
    case Air
}


//以type表示想買的iPad
let type : IPadType = .Mini


//switch可以比對type變數中的資料，
//是否對應其中case後面的值，
//若比對相同，
//則執行case下方的程式，
//在此用switch表示買不同型號的iPad，
//至少需要準備多少錢
switch type
    {
case IPadType.Air:
    println("需要12,000元以上")
case IPadType.Mini:
    println("需要10,000元以上")
    //而default是當所有case都不滿足時，
    //才會執行的條件
default:
    println("您要買哪款iPad?")
}
