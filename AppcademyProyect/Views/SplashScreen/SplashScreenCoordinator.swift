//
//  SplashScreenCoordinator.swift
//  AppcademyProyect
//
//  Created by Victor Hugo Martinez Ramirez on 19/02/24.
//

import UIKit

class SplashScreenCoordinator: Coordinator{
    var childCoordinator: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func startCoordinator() {
        let view = SplashScreenViewController()
        let viewModel = SplashScreenViewModel()
        viewModel.coordinator = self
        view.viewModel = viewModel
        navigationController.setViewControllers([view], animated: true)
    }
    
    func goToHome(){
        
    }
    
    func goToLogin(){
        
    }
    
}
