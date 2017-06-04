//
//  iPadY.swift
//  class_object_override2
//
//  Created by KH on 2014/10/27.
//  Copyright (c) 2014年 KH. All rights reserved.
//

import Foundation

//iPadY繼承自iPad
class iPadY : iPad
{
    //改寫wifi連網方法，
    //改寫時給予更寬的權限public，
    //這也是沒問題的
    override public func connectInternetWithWifi()
    {
        println("iPadY透過Wifi連網...已連結")
    }
}