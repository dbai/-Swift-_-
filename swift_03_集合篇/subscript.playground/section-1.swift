// Playground - noun: a place where people can play

import UIKit


//簡單宣告iPad類別
class iPad
{
}


//定義iPadStore，
//用以存放多個iPad物件
class iPadStore
{
    //宣告_innerDic屬性，
    //用來做為iPadStore內部實際儲存iPad的物件
    let _innerDic:[String:iPad] = [:]
    
    //使用下標語法subscript定義下標，
    //subscript就像方法一樣，
    //小括號代表傳入的參數值，
    //在此模擬字典的方式傳入特定鍵值
    //小括號後方表示回傳值，
    //在此回傳iPad物件
    subscript(key: String) -> iPad {
        //取值式，
        //下標回傳物件的式子
        get {
            //直接將key值傳給內部保存iPad的字典集合_innerDic，
            //取得iPad物件後回傳
            return _innerDic[key]
        }
        
        //設值式，
        //下標指派保存物件的式子，
        //其有個參數會帶入需保存的iPad
        set(pad) {
            //給予指定的key值，
            //實際存放在內部保存iPad的字典集合_innerDic
            _innerDic[key] = pad
        }
    }
}

//建立jack、gina與grank的iPad物件
let jackPad = iPad()
let ginaPad = iPad()
let frankPad = iPad()


//建立iPadStore物件
let padStore = iPadStore()

//透過下標的製作，
//iPadStore就如同字典集合一樣，
//可以透過指定key值存放對應的pad物件
padStore["jack"] = jackPad
padStore["gina"] = ginaPad
padStore["frank"] = frankPad


//當然，透過key值，
//一樣可以取得對應的iPad物件
println(padStore["jack"].x)
println(padStore["gina"])
println(padStore["frank"])
