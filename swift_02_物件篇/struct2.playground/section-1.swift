// Playground - noun: a place where people can play

import UIKit


import Foundation

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


//若使用let定量變數保存iPadInfo結構值
let padinfo1 = iPadInfo()

//以下程式是錯誤的試範，
//則此結構值將不可在變更，
//即便其屬性是個變量屬性也不可變更
padinfo1.id = "1112223330"
padinfo1.type = "iPad mini"
padinfo1.capacity = 16