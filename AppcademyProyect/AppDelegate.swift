//
//  AppDelegate.swift
//  AppcademyProyect
//
//  Created by Janelly on 13/02/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var appCoodinator: AppCoordinator?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        self.appCoodinator = AppCoordinator(window: window!)
        appCoodinator?.startCoordinator()
        
        return true
    }


}

