// Playground - noun: a place where people can play

import UIKit

class iPad
{
    //準備capacity表示iPad的總容量，
    //usedCapacity為已使用的容量
    var capacity = 0
    var usedCapacity = 0
    
    //製作取得剩餘儲存空間的功能，
    //在小括號後方加上箭號"->"，
    //表示有回傳值，
    //而箭號"->"後面接的就是要回傳的資料型別
    func getRemainingCapacity() -> Int
    {
        let remainingCapacity = capacity - usedCapacity
        //在方法中，透過return，
        //即表示將資料回傳，
        //此資料的型別，
        //必預與箭號"->"後面接的就是要回傳的資料型別一致
        return remainingCapacity
    }
}



//建立iPad物件，
//並設定總容量為32G，
//已使用量為10G
let pad1 = iPad()
pad1.capacity = 32
pad1.usedCapacity = 10


//呼叫取得剩餘儲存空間的方法，
//在呼叫後會回傳剩餘空間，
//此時可保存在一個變數中，
//以供後續使用
let re = pad1.getRemainingCapacity()
println(re)


//或呼叫後直接使用
println(pad1.getRemainingCapacity())