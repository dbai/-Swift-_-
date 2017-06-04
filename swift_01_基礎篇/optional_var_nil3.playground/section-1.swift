// Playground - noun: a place where people can play

import UIKit




//透過型別+驚歎號"!"定義一個隱含取值可選變數，
//在透過指派運算式"="保存值上，
//它就如同一個可選變數，
//可以為nil，
//也可以為一個值
var type:String! = nil
type = "iPad Air"


//當然，也可以將另一個可選變數type1的字串值，
//帶入這個自動反包裝的可選變數type
var type1:String? = "iPad mini"
type = type1


//不同於可選變數的是，
//其在反包裝可選變數時，
//不在需要另外使用驚歎號"!"，
//其是會自動反包裝可選變數的值，
//因此您會直接取得變數中的字串值
print(type)


//當然，透過驚歎號"!"-強制取值表示式，
//取得type1的值時，
//若取出的值為nil，
//仍會向可選變數一樣，
//發生執行時的錯誤
type1 = nil
print(type1!)
