// Playground - noun: a place where people can play

import UIKit

//以class關鍵字宣告iPad類別，
//後方接的是大括號"{}"表示iPad的內容，
//目前沒有任何東西
class iPad
{
    
}



//iPad類別也是型別的一種，
//因此可以作為變數的型別，
//要建立iPad物件時，
//只需在iPad後面加上小括號"()"，
//即表示要建立iPad物件，
//建立後即可放入iPad型別的變數中保存，
//如此即可透過iPad類別，
//打造出一台一台的iPad
let pad1:iPad = iPad()
let pad2 = iPad()
let pad3 = iPad()
let pad4 = iPad()
let pad5 = iPad()

//透過as AnyObject轉型成AnyObject型別的變數
//(後續在多型的小節會說明到什麼是轉型)
let o1:AnyObject = pad1 as AnyObject
let o2:AnyObject = pad2 as AnyObject
let o3:AnyObject = pad3 as AnyObject
let o4:AnyObject = pad4 as AnyObject
let o5:AnyObject = pad5 as AnyObject
//透過hash屬性查看與記憶體相關的資訊，
//(什麼是屬性，也會在接下來的小節作說明)，
//您會發現每個iPad皆有不同的記憶體相關資訊，
//表示這5台iPad是相互獨立的
println(o1.hash)
println(o2.hash)
println(o3.hash)
println(o4.hash)
println(o5.hash)
