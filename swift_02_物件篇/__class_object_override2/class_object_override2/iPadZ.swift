//
//  iPadZ.swift
//  class_object_override2
//
//  Created by KH on 2014/10/27.
//  Copyright (c) 2014年 KH. All rights reserved.
//

import Foundation

//iPadZ繼承自iPad
class iPadZ : iPad
{
    //改寫wifi連網方法，
    //改寫時給予更窄的權限private，
    //這是不行的，
    //因考量多型的機制(後面章節會提供)，
    //因此不可這麼做
    override private func connectInternetWithWifi()
    {
        println("iPadZ透過Wifi連網...已連結")
    }
}