// Playground - noun: a place where people can play

import UIKit

//定義iPad類別
class iPad
{
}

//ary1，這是明確的使用泛型的寫法，
//透過雙箭號"<>"指定泛型的型別為iPad
var ary1:Array<iPad> = [iPad()]
//ary2會自動透過型別的推論，
//推論出Array的泛型為iPad，即Array<iPad>
var ary2:Array = [iPad()]
//ary3透過陣列型別的寫法[iPad]，
//也會自動對應成支援泛型的Array - Array<iPad>
var ary3:[iPad] = []


//dic1，這是明確的使用泛型的寫法，
//透過雙箭號"<>"指定泛型的鍵值key型別為String，值value型別為iPad
var dic1:Dictionary<String, iPad> = ["eric":iPad()]
//dic2會自動透過型別的推論，
//推論出Dictionary的鍵值key型別為String，值value型別為iPad，
//即Dictionary<String, iPad>
var dic2:Dictionary = ["eric":iPad()]
//dic3透過字典型別的寫法[String:iPad]，
//也會自動對應成支援泛型的Dictionary - Dictionary<String, iPad>
var dic3:[String:iPad] = [:]

