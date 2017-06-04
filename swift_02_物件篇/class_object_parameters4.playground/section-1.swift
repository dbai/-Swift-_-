// Playground - noun: a place where people can play

import UIKit



class iPad
{
    //第3個參數使用inout關鍵字，
    //將sucess參數定義為可對內對與對外傳送資料的參數
    func palyVideoWithVolume(vol:Int, inFullScreen:Bool, inout success:Bool)
    {
        println("播放影片，音量\(vol)，全螢幕播放：\(inFullScreen)")
        //取得外部傳入的資料
        println("success:\(success)")
        //傳出參數值為false
        success = true
    }
}


let pad1 = iPad()

//宣告一個Bool變數s，
//並給予false值
var s:Bool = false
//事實上，inout參數會將s變數整個帶入方法的success參數中，
//這時要傳的就是透過"&"運算式取得的s變數的記憶體位置，
//也因為傳入的是整個s變數，
//因此可以接收取回在方法內變更success的值
pad1.palyVideoWithVolume(10, inFullScreen:true, success: &s)
//取得接收回來的值
println("s:\(s)")