//
//  AppDelegate.swift
//  Module
//
//  Created by Neal on 2019/11/29.
//  Copyright © 2019 Neal. All rights reserved.
//

import UIKit
import IQKeyboardManager

@UIApplicationMain

/// 启动时加载代理
class AppDelegate: UIResponder, UIApplicationDelegate {

    
    /// 主窗口
    var window: UIWindow?
    
    /// 当程序加载完毕
    /// - Parameters:
    ///   - application: 主程序
    ///   - launchOptions: 启动参数
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        #if DEBUG
        Log.setOpen(.Open)
        #endif
        
        IQKeyboardManager.shared().isEnabled = true
        IQKeyboardManager.shared().shouldResignOnTouchOutside = true
        
        self.window = UIWindow.init(frame: App.Screen.bounds)
        self.window?.backgroundColor = .white
 
        self.setTabbarVC()
        
//        self.setLoginVC()
        
        return true
    }
    
    /// 设置根试图为首页
    func setTabbarVC() {
        self.window?.rootViewController = BaseTabbarViewController.init()
        self.window?.makeKeyAndVisible()
    }
    
    /// 设置根试图为登陆页面
    func setLoginVC() {
        self.window?.rootViewController = UINavigationController.init(rootViewController: LoginViewController())
        self.window?.makeKeyAndVisible()
    }

//    // MARK: UISceneSession Lifecycle
//
//    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
//        // Called when a new scene session is being created.
//        // Use this method to select a configuration to create the new scene with.
//        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
//    }
//
//    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
//        // Called when the user discards a scene session.
//        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
//        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
//    }


}

