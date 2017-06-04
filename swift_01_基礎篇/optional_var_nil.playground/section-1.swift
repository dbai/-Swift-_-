// Playground - noun: a place where people can play

import UIKit


//在型別後方加上問號"?"，
//這時宣告的變數即會變成可選變數，
//意思是變數中不一定要有值
//在此宣告3個可選變數，
//分別保存iPad的資訊
var id:String? = "0909111000"
var type:String? = "iPad mini"
var capacity:Int? = 16

//當一台iPad消失時，
//則可代入nil，
//這示這裡沒有任何的資料
id = nil
type = nil
capacity = nil


//當然，可選變數拿出來的東西，
//即可以是nil，
//或是相關型別的資料，
//這即是為何此變數稱為可選的原因，
//變數中可以有資料，
//也可以可選為nil
println(id)
println(type)
println(capacity)