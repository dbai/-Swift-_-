//
//  iPad.swift
//  class_object_access_control
//
//  Created by KH on 2014/10/15.
//  Copyright (c) 2014年 KH. All rights reserved.
//

import Foundation


class iPad
{
    //為已使用容量屬性usedCapacity加上private，
    //如此此屬性即會被封裝在物件內，
    //僅有此iPad物件本身可以使用
    private var usedCapacity = 0

    //同樣的，將計算已使用容量的方法，
    //也透過private封裝在物件內
    private func caculateUsedCapacity(capacity:Int)
    {
        //累計已使用容量到usedCapacity屬性
        self.usedCapacity = self.usedCapacity + capacity
    }
    
    //製作一個安裝app的方法 - installApp，
    //此方法會帶入一個值組(String, Int)，
    //以分別表示安裝App的名稱與容量
    func installApp(app:(String, Int))
    {
        //解出app的名稱與容量至appName與capacity變數中
        let (appName, capacity) = app
        
        //物件內部使用計算已使用容量方法caculateUsedCapacity，
        //已計算已使用的容量
        self.caculateUsedCapacity(capacity)
        
        println("安裝\(appName)app...")
        println("已使用的容量\(self.usedCapacity)")
    }
}