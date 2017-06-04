// Playground - noun: a place where people can play

import UIKit


//以total表示總水量
var total=0

//若沒有100公升，
//則繼續裝水
while total < 100
{
    //透過arc4random() % 10，
    //取1~10公升的水
    let x:Int = (Int)(arc4random() % 10)
    println("裝\(x)公升的水!")
    
    //累加總水量
    total = total+x
}



//以total1表示總水量，
//直接設定100滿水的狀態
var total1 = 100

//do-while，
//至少會先執行一次在判斷是否再次執行，
//do，先作在說
do
{
    //透過arc4random() % 10，
    //取1~10公升的水
    let x:Int = (Int)(arc4random() % 10)
    println("裝\(x)公升的水!")
    
    //累加總水量
    total1 = total1+x
    
} while total1 < 100 //do-while的續續執行判斷會在後面