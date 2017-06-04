// Playground - noun: a place where people can play

import UIKit


//資料皆有對應的型別，
//因此在宣告變數時，
//即可透過資料型別的推論，
//來決定變數的型別

//在此id與type定量變數，
//因給予的資料被推論為String型別的定量變數
let id = "010101929283"
let type = "iPad mini"
//capacity因16為Int，
//因此capacity被推論為Int型別的變量變數
var capacity = 16



//特別注意的是，
//一但型別被推論，
//變數的型別即不可在變更
//如下money被推論為Int型別的可變變數
var money = 100
//這時若改成$100，則會發生錯誤
money = "$100"
