// Playground - noun: a place where people can play

import UIKit


//值組(Tuple)，可一次容納多個數值，
//如此即可利用一個值組，
//表示一台iPad的資訊，
//在此宣告定量變數以裝下一個值組，
//值組會以小框號的方式將多個資料裝起來，
//資料以逗號(,)隔開，
//當然此值組的型別就會以推論的方式，
//推論為(String, String, Int)
let iPad1 = ("1010109999", "iPad mini", 16)
//值組也可存放在變數變數中
var iPad2 = ("2223330999", "iPad Air", 32)


//值組可透過拆解的方式分解值到變數中，
//拆解的方式就是以小括號()，
//其中在每個資料的位置放入變數即可
//分別拆解成id、type與capacity三個定量變數，
let (id, type, capacity) = iPad1

//當然，也可拆解成變量變數
var (id1, type1, capacity1) = iPad1