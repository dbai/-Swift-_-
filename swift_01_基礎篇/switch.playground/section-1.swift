// Playground - noun: a place where people can play

import UIKit


//以iPadType表示想買的iPad
let iPadType = "mini"


//switch可以比對iPadType變數中的資料，
//是否對應其中case後面的值，
//若比對相同，
//則執行case下方的程式，
//在此用switch表示買不同型號的iPad，
//至少需要準備多少錢
switch iPadType
    {
case "Air":
    println("需要12,000元以上")
case "mini":
    println("需要10,000元以上")
    //而default是當所有case都不滿足時，
    //才會執行的條件
default:
    println("您要買哪款iPad?")
}




//以下是個錯誤的示範

//以iPadType1表示想買的iPad
let iPadType1 = "mini"


//若比對的case中，
//無法含概所有的可能比對情況時，
//這時就要加上default預設情況，
//若不加上則會出錯，
//無法編譯
switch iPadType1
    {
case "Air":
    println("需要12,000元以上")
case "mini":
    println("需要10,000元以上")
    //無法涵蓋所有可能，
    //又少了default，
    //編譯器即會發出錯誤
    //default:
    //    println("您要買哪款iPad?")
    
}