//
//  LogInViewController.swift
//  MyChat
//
//  Created by F1xTeoNtTsS on 13.09.2021.
//

import UIKit
import Firebase

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
        if let email = configView.emailTextField.text, let password = configView.passwordTextField.text {
            Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
                guard self != nil else { return }
                if let error = error{
                    self?.configView.errorDescriptionLabel.text = error.localizedDescription
                } else {
                    let chatVC = ChatViewController()
                    self?.navigationController?.pushViewController(chatVC, animated: true)
                }
                
            }
        }
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
