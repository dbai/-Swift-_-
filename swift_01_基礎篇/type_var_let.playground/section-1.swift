// Playground - noun: a place where people can play

import UIKit


//每個資料皆有資料型別，
//如此才能決定要配置多少記憶體空間來保存資料

//這是Int資料，整數預設是使用Int型別
println(10)
println(-10)
//這是Int資料
println(true)
println(false)
//這是Double資料，有小數的數預設是使用Double型別
println(3.14)


//當然，變數也需有資料型別，
//用以決定變數可裝下什麼樣的資料，
//因此會在宣告變數的後方透過冒號(:)加上型別，
//在此使用let宣告變數，
//並直接透過指派運算式(=)放入資料，
//在swift中共有以下6種型別，如下：
//Int存正負整數
let i:Int = -10
//UInt只能存正整數
let ui:UInt = 10
//Float存放有小數的數
let f:Float = 3.14
//Double存放更多位小數的數
let d:Double = 3.202928
//Bool存放ture或false
let b:Bool = true
//String存放字串
let s:String = "abc"



//透過let宣告定量變數，資料決定後就不能在變更，
//在此用以表示iPad的id與type在出廠後即不可在變更
let id:String = "0099191919"
let type:String = "iPad mini"

//透過var宣告變量變數，資料決定後可在變更值
//在此用以表示iPad的容量，
var capacity:Int = 16
//因var變量變數的原因，
//後續可將容量擴充變更為32
capacity = 32

//不論是let定量變數或var變量變數，
//皆有一個共通點，
//那就是存入的資訊可再次的取出使用，
//這就是變數的能力 - 用來儲存資料，
//並可再次取出使用
println(id)
println(type)
println(capacity)

