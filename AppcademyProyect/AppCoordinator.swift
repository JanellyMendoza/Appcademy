//
//  AppCoordinator.swift
//  AppcademyProyect
//
//  Created by Victor Hugo Martinez Ramirez on 19/02/24.
//

import UIKit

protocol Coordinator{
    var childCoordinator: [Coordinator]{ get set }
    func startCoordinator()
}

class AppCoordinator: Coordinator{
    var childCoordinator: [Coordinator] = []
    var window: UIWindow
    
    init(window: UIWindow){
        self.window = window
    }
    
    func startCoordinator() {
        let navigationController = UINavigationController()
        let splashCoordinator = SplashScreenCoordinator(navigationController: navigationController)
        childCoordinator.append(splashCoordinator)
        splashCoordinator.startCoordinator()
        
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
    
    
}
