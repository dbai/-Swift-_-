// Playground - noun: a place where people can play

import UIKit


//以total表示總水量
var total=0
//執行次數
var count=0

//若沒有100公升，
//則繼續裝水
while total < 100
{
    //若裝水15次，但沒裝滿100公升，
    //則透過break離開
    if count>15
    {
        break
    }
    
    count=count+1
    
    //透過arc4random() % 10，
    //取1~10公升的水
    let x:Int = (Int)(arc4random() % 10)
    println("裝\(x)公升的水!")
    
    //累加總水量
    total = total+x
}



//以total1表示總水量
var total1=0


//若沒有100公升，
//則繼續裝水
while total < 100
{
    //透過arc4random() % 10，
    //取1~10公升的水
    let x:Int = (Int)(arc4random() % 10)
    println("裝\(x)公升的水!")
    
    
    //若裝的水少於2公升，
    //則不裝入總水量中，
    //直接透過continue進入下一回合
    if x<2
    {
        continue
    }
    
    
    
    //累加總水量
    total = total+x
}
