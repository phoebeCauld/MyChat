//
//  ViewController.swift
//  MyChat
//
//  Created by F1xTeoNtTsS on 13.09.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    let configView = ConfigWelcomeView()
    override func viewDidLoad() {
        super.viewDidLoad()
        configView.setView(view)
        configView.registerButton.addTarget(self, action: #selector(registerButtonPressed),
                                            for: .touchUpInside)
        configView.logInButton.addTarget(self, action: #selector(logInButtonPressed),
                                         for: .touchUpInside)
    }
    
    
    
    @objc func registerButtonPressed(){
        let regiserVC = RegisterViewController()
        present(regiserVC, animated: true, completion: nil)
    }
    
    @objc func logInButtonPressed(){
        let logInVC = LogInViewController()
        present(logInVC, animated: true, completion: nil)
    }
}

