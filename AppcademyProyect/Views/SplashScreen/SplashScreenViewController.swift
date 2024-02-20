//
//  SplashScreenViewController.swift
//  AppcademyProyect
//
//  Created by Victor Hugo Martinez Ramirez on 19/02/24.
//

import UIKit

class SplashScreenViewController: UIViewController {
    
    var viewModel: SplashScreenViewModel!
    
    var appCademyText: UILabel = {
        var appCademyText = UILabel()
        appCademyText.text = "AppCademy"
        appCademyText.font = UIFont(name: "Arial Bold", size: 30)
        appCademyText.textColor = .white
        
        return appCademyText
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemPurple
        initUI()
    }
    
    func initUI(){
        view.addSubview(appCademyText)
        appCademyText.addAnchorsAndCenter(centerX: true, centerY: true, width: nil, height: nil, left: nil, top: nil, right: nil, bottom: nil)
    }
    
    func goToHome(){
        viewModel.goToHome()
    }
    
    func goToLogin(){
        viewModel.goToLogin()
    }

}
