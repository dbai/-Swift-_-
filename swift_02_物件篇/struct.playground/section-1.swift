// Playground - noun: a place where people can play

import UIKit


import Foundation

//使用class建立類別
class iPad
{
    var id = ""
    var type = ""
    var capacity = 0
    
    func printInfo()
    {
        println(id)
        println(type)
        println(capacity)
    }
}


//使用struct建立結構
struct iPadInfo
{
    var id = ""
    var type = ""
    var capacity = 0
    
    func printInfo()
    {
        println(id)
        println(type)
        println(capacity)
    }
    
}



//建立iPad物件
var pad1 = iPad()
pad1.id = "1112223330"
pad1.type = "iPad mini"
pad1.capacity = 16
pad1.printInfo()


//不論透過多少變數，
//皆是指向同一個物件，
//因此當物件的資訊變更時，
//其他參考至同一個物件的變數，
//取出後的物件，
//都會是同一個物件，
//當然其中保存的資訊也會是修改後的資料
var pad2 = pad1
pad1.type = "iPad Air"
pad2.printInfo()

var pad3 = pad2
pad3.printInfo()




//建立一個iPadInfo結構的值
var padInfo1 = iPadInfo()
padInfo1.id = "1112223330"
padInfo1.type = "iPad mini"
padInfo1.capacity = 16


//當ipadInfo傳遞給另一個變數時，
//會複製一份全新的結構值，
//而不是參考至同一個結構值，
//因此若變更變數中的結構值時，
//其會更改其對應的結構值，
//而不是指向同一個結構值一同變更
var padInfo2 = padInfo1
padInfo2.type = "iPad air"
var padInfo3 = padInfo2
padInfo3.capacity = 32

padInfo1.printInfo()
padInfo2.printInfo()
padInfo3.printInfo()