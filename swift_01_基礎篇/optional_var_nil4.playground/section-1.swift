// Playground - noun: a place where people can play

import UIKit




//宣告一個可選變數type，
//並設定字串值為"iPad Mini"
var type:String? = nil
type = "iPad Mini"

//在變數後方加上問號"?"，
//表示這個變數將使用可選鏈結式，
//type若真的取出字串，而非nil，
//則進行後續"isEmpty"屬性的存取(屬性將於後面章結說明)
print(type?.isEmpty)

//將type設為nil
type = nil
//這時透過問號"?"可選鏈結式，
//就會因為type取出的是nil，
//而不繼續存取"isEmpty"屬性
print(type?.isEmpty)


//type?.isEmpty等同於下列if程式，
//先判斷是否不為nil，
//若不為nil在執行"isEmpty"屬性的存取
if type != nil
{
    print(type?.isEmpty)
}


//宣告一個隱含取值可選變數type1
var type1:String! = nil
type1 = "iPad Air"

//當然隱含取值可選變數，
//也可以透過問號"?"，
//使用可選鏈結式
print(type1?.isEmpty)
