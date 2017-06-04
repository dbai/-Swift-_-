//
//  iPadX.swift
//  class_object_override2
//
//  Created by KH on 2014/10/27.
//  Copyright (c) 2014年 KH. All rights reserved.
//

import Foundation

//iPadX繼承自iPad
class iPadX : iPad
{
    //改寫wifi連網方法，
    //改寫時給予相同的權限internal，
    //這是沒問題的
    override internal func connectInternetWithWifi()
    {
        println("iPadX透過Wifi連網...已連結")
    }
}