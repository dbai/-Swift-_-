// Playground - noun: a place where people can play

import UIKit


//定義一個字串型別的可選變數type，
//並設定"iPad mini"字串
var type:String? = "iPad mini"


//實際上可選變數是一個Optional列舉的型別(後面會說到列舉)，
//因此從type可選變數取出的是一個Optional列舉的型別，
//而不是字串
print(type)

//這時在變數後方加上驚歎號"!"-強制取值表示式，
//表示要反包裝可選變數，
//將裡面存的值反包裝出來，
//這表示透過驚歎號"!"反包裝可選變數，
//一定且必須拿的到裡面保存的值，而不是nil，
//而在此會反包裝出"iPad mini"字串，
//並放入一個非可選的typeSting變數中
let typeString:String = type!



//刻意將可選變數type設為nil
type = nil

//若透過驚歎號"!"反包裝可選變數得到的是nil，
//則會在執行此程式時發生錯誤，
//這再次確保了驚歎號"!"反包裝可選變數一定且必須要取得值的要求
print(type!)
