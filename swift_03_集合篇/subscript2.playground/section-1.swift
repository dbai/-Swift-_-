// Playground - noun: a place where people can play

import UIKit


class Matrix
{
    //若有需要，
    //下標可以在小括號中以逗號","隔開多個參數
    subscript(x:Int, y:Int) -> Int
    {
        //只有get取值式，
        //表示此下標是唯讀的
        get
        {
            return x * y
        }
    }
}




//建立Matrix物件
let m = Matrix()
    

//在使用多個參數的下標時，
//只需在中括號"[]"中以逗號","隔開多個參數即可
println(m[10, 20])
