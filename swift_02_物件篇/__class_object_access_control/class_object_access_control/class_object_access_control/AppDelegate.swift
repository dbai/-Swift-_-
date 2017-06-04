//
//  AppDelegate.swift
//  class_object_access_control
//
//  Created by KH on 2014/10/14.
//  Copyright (c) 2014年 KH. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        //建立iPad物件
        let pad1 = iPad()
        //呼叫安裝app方法安裝2個app，
        //其中會使用到計算已使用容量方法與屬性 - caculateUsedCapacity與usedCapacity，
        //已內容計算出已使用的容量
        pad1.installApp(("smartx", 100))
        pad1.installApp(("gamet", 50))
        
        //但若是您想要直接使用caculateUsedCapacity方法與usedCapacity屬性，
        //因為此方法與屬性已透過private封裝在物件內，
        //因此無法被使用與叫用，
        //透過private封裝，
        //確保了物件的完整性，
        //有些的方法與屬性是物件內部運作時使用的，
        //而不會被外部使用者直接誤用
        let x = pad1.usedCapacity
        pad1.caculateUsedCapacity(100)
        
        
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

