// Playground - noun: a place where people can play

import UIKit


class iPad
{
    //為第1個參數加上外部參數名稱
    func palyVideo(volume vol:Int, inFullScreen isFull:Bool)
    {
        println("播放影片，音量\(vol)，全螢幕播放：\(isFull)")
    }
}


let pad1 = iPad()

//使用時，第1個參數也須要加上外部參數名稱
pad1.palyVideo(volume:10, inFullScreen:true)


