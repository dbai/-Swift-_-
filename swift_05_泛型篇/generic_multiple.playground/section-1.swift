// Playground - noun: a place where people can play

import UIKit

//定義Coin類別
class Coin
{
    
}
//定義iPhone類別
class iPhone
{
    
}

//泛型參數可以有一個以上，
//只需使用箭號隔開即可，
//在此作一個自動販賣機，
//可透過泛型動態決定此自動販賣機可投入什麼，
//然後換得什麼，
//InType表示投入的東西的型別，
//OutType表示換得的東西的型別
class VendingMachine<InType, OutType>
{
    private var outItem:OutType? = nil
    //保存可換取的東西
    func store(outSomething:OutType?)
    {
        outItem = outSomething
    }
    //自動販賣機的功能，
    //投入東西換取另一樣東西
    func swapto(inSomething:InType) -> OutType?
    {
        let returnItem = outItem
        outItem = nil
        return returnItem
    }
}
//製作一台投入硬幣換iPhone的自動販賣機
var m1:VendingMachine<Coin, iPhone> = Box<Coin, iPhone>()
//存入iPhone
m1.store(iPhone())
//以硬幣Coin換取iPhone
let phone:iPhone? = m1.swapto(Coin())

