// Playground - noun: a place where people can play

import UIKit

//定義iPad類別
class iPad
{
}

//陣列Array也支援泛型，
//透過雙箭號"<>"，
//同樣可以指定泛型的型別，
//以決定陣列中應該裝的物件或資料型別，
//在此代入iPad型別至陣列的泛型參數中，
//表示建立的是一個僅能裝iPad物件的陣列，
//如此即能確保陣列中裝的一定是iPad物件
var ary:Array<iPad> = []
ary.append(iPad())
ary.append(iPad())
ary.append(iPad())


//同樣的字典Dictionary也支援泛型，
//透過雙箭號"<>"，
//同樣可以指定泛型的型別，
//而Dictionary有2個泛型參數，
//第1個表示鍵值key的型別，
//第2個表示值value的型別，
//在此代入"<String, iPad>"，
//表示鍵值key的型別為String，
//而值value的型別為iPad
var dic:Dictionary<String, iPad> = [:]
dic["jack"] = iPad()
dic["eric"] = iPad()
dic["jason"] = iPad()
