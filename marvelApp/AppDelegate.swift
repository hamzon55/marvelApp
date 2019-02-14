//
//  AppDelegate.swift
//  viperProject
//
//  Created by Hamza Jerbi on 11/01/2019.
//  Copyright © 2019 Hamza Jerbi. All rights reserved.


import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let navigationController = NavigationBar()
        
        let main = MainRouter.createModule()
        navigationController.viewControllers = [main]
        PersistentData.shared.baseURL.value = Constants.Network.base_url

        window = UIWindow(frame: UIScreen.main.bounds);
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible();
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
 
    }

    func applicationWillEnterForeground(_ application: UIApplication) {

    }

    func applicationDidBecomeActive(_ application: UIApplication) {

    }

    func applicationWillTerminate(_ application: UIApplication) {

    }


}

