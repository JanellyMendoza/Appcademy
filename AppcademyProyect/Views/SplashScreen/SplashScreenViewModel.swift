//
//  SplashScreenViewModel.swift
//  AppcademyProyect
//
//  Created by Victor Hugo Martinez Ramirez on 19/02/24.
//

import Foundation

class SplashScreenViewModel{
    var coordinator: SplashScreenCoordinator!
    
    func goToHome(){
        coordinator.goToHome()
    }
    
    func goToLogin(){
        coordinator.goToLogin()
    }
}
