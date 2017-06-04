// Playground - noun: a place where people can play

import UIKit



class iPad
{
    //第2個參數此時並未加上外部參數名稱，
    //此時編譯器會自動加上一個與參數名稱一模一樣的外部參數名稱
    func palyVideoWithVolume(vol:Int, inFullScreen:Bool)
    {
        println("播放影片，音量\(vol)，全螢幕播放：\(inFullScreen)")
    }
}


let pad1 = iPad()

//呼叫方法時，
//第2個參數必須加上編譯器自動產生的外部參數名稱
pad1.palyVideoWithVolume(10, inFullScreen:true)