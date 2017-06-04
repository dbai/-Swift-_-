// Playground - noun: a place where people can play

import UIKit

class iPad
{
    //宣告isOnOff變量屬性，
    //以存放目前開關機的狀態
    var isOnOff = false
    
    //使用func製作開關機方法onOff，
    //onOff後面接的是一個小括號(參數使用，後面說明)，
    //接著即是大括號"{}"程式區塊，
    //用以在程式區塊中，
    //以程式的方式描述開關機onOff如何進行
    func onOff()
    {
        //若isOnOff為false，
        //表示目前為關機狀態，
        //則進行開機的動作
        if isOnOff == false
        {
            println("開機!")
            isOnOff = true
        }
        else //否則，則進行關機的動作
        {
            println("關機!")
            isOnOff = false
        }
    }
}


//建立iPad物件
let pad1 = iPad()


//透過句點(.)的方式呼叫開關機方法onOff，
//並於後方加上小括號"()"即可
pad1.onOff()
pad1.onOff()