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
        titleAnimation()
        
    }
   
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: animated);
        self.navigationController?.navigationBar.backgroundColor = .none
        super.viewWillDisappear(animated)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    @objc func registerButtonPressed(){
        let regiserVC = RegisterViewController()
        navigationController?.pushViewController(regiserVC, animated: true)
    }
    
    @objc func logInButtonPressed(){
        let logInVC = LogInViewController()
        navigationController?.pushViewController(logInVC, animated: true)
    }
    
    func titleAnimation(){
        let titleText = "⚡️FlashChat"
        var time = 0.0
        for letter in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.05 * time, repeats: false) { timer in
                self.configView.titleLabel.text?.append(letter)
            }
            time+=1
        }
    }
}

