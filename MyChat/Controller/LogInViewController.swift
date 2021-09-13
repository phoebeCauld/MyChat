//
//  LogInViewController.swift
//  MyChat
//
//  Created by F1xTeoNtTsS on 13.09.2021.
//

import UIKit

class LogInViewController: UIViewController {
    
    let configView = ConfigLogInView()
    override func viewDidLoad() {
        super.viewDidLoad()
        configView.setView(view)
        configView.emailTextField.delegate = self
        configView.passwordTextField.delegate = self
        configView.logInButton.addTarget(self, action: #selector(loginPressed), for: .touchUpInside)
    }
    
    @objc func loginPressed(){
        let chatVC = ChatViewController()
        present(chatVC, animated: true, completion: nil)
    }
}

extension LogInViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.endEditing(true)
        return true
    }
}
