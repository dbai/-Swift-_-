// Playground - noun: a place where people can play

import UIKit


for x in 1...10 {
    
    if x == 5
    {
        println("拍照第\(x)次，不拍了!")
        //透過break，可中斷for迴圈，
        //因此在拍照第5次時，
        //將不在繼續拍照
        break;
    }
    
    println("拍照第\(x)次!")
    println("存檔!")
}




for x in 1...10 {
    
    if x % 2 == 0
    {
        //透過continue，可跳過目前的回合，
        //直接進入下一回合，
        //因此在偶數時，
        //將透過contiune進入下一回合
        //不會執行後續的拍照程式
        continue;
    }
    
    println("拍照第\(x)次!")
    println("存檔!")
}
