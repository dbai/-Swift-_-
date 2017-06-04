// Playground - noun: a place where people can play

import UIKit

class iPad
{
    //var宣告變量屬性id識別碼，
    //type型號，
    //與capacity容量，
    //在宣告的同時即透過指派運算式"="設定初始值，
    //當然，屬性後方也可加上型別，
    //以指定屬性的型別，
    //說穿了，屬性即是存在於物件上的變數，
    //功能與變數相同
    var id:String = ""
    var type = ""
    var capacity = 0
    
    
    //let宣告定量屬性，決定後即不可在變更
    let madeIn = "Taiwan"
}


//建立iPad物件
//此iPad的id識別碼為0901122333，
//type類型為iPad mini，
//capacity容量為16G
let pad1 = iPad()
pad1.id = "0901122333"
pad1.type = "iPad mini"
pad1.capacity = 16


//建立第2台iPad物件，
//此iPad的id識別碼為1112223330，
//type類型為iPad air，
//capacity容量為16G
let pad2 = iPad()
pad2.id = "1112223330"
pad2.type = "iPad air"
pad2.capacity = 16


//建立第3台iPad物件，
//此iPad的id識別碼為0009998882，
//type類型為iPad air，
//capacity容量為32G

let pad3 = iPad()
pad3.id = "0009998882"
pad3.type = "iPad air"
pad3.capacity = 32


//觀察3台iPad的資訊，
//您會發現3台的iPad資訊皆不相同，
//這表示這3台iPad分別獨立與存在，
//以符合現實生活中一台一台iPad的現在情況，
//當然，其中的產地madeIn，
//因為不可變，
//因此都會有相同的Taiwan值
println("\(pad1.id)")
println("\(pad1.type)")
println("\(pad1.capacity)")
println("\(pad1.madeIn)")

println("\(pad2.id)")
println("\(pad2.type)")
println("\(pad2.capacity)")
println("\(pad2.madeIn)")

println("\(pad3.id)")
println("\(pad3.type)")
println("\(pad3.capacity)")
println("\(pad3.madeIn)")