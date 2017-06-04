// Playground - noun: a place where people can play

import UIKit

class iPad
{
    //定義一個內部存取的私有屬性"_type"，
    //關於private存取修飾詞後面章節會提供
    private var _type:String = ""
    
    //定義一個計算屬性 - type，
    //計算屬性只可以使用在變量屬性上，
    //透過定量屬性，
    //即可透過程式的方式，
    //去進行存取type屬性的規則制定
    var type:String
    {
        //計算屬性的get取值式，
        //用以回傳type屬性的值
        get
        {
            //在此簡單回傳_type屬性的值
            return _type
        }
        
        //計算屬性的set設值式，
        //用以設定type屬性的值，
        //新的值會透過set後方有個小括號"()"中的參數，
        //將新值帶入
        set(newValue)
        {
            //若傳入的值為"iPad mini"或"iPad Air"才設定新值至_type變數中
            if newValue == "iPad mini" || newValue == "iPad Air"
            {
                self._type=newValue
            }
        }
    }
    
    
    var madeIn:String
    {
        //當然，也可以只要有個get取值式，
        //創造唯讀屬性的可能
        get
        {
            return "Taiwan"
        }
    }

}



var pad1 = iPad()
//在指派type屬性新值時，
//會呼叫其中的set設值式
iPad.type = "iPad mini"
//在取得屬性值時，
//會呼叫get取值式，
//取得屬性值
println(iPad.type)


//存取唯讀屬性madeIn的值
println(pad1.madeIn)