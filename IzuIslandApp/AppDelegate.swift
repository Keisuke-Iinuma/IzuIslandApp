//
//  AppDelegate.swift
//  IzuIslandApp
//
//  Created by 飯沼圭哉 on 2020/08/03.
//  Copyright © 2020 keisuke.iinuma. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        sleep(2);// <<<<<<<<<<<< 追加
        return true
    }
    
    // MARK: UISceneSession Lifecycle
    
    
}

