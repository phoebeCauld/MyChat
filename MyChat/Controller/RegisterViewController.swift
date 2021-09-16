//
//  RegisterViewController.swift
//  MyChat
//
//  Created by F1xTeoNtTsS on 13.09.2021.
//

import UIKit
import Firebase
class RegisterViewController: UIViewController {

    let configView = ConfigRegisterView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView.setView(view)
        configView.emailTextField.delegate = self
        configView.passwordTextField.delegate = self
        self.navigationController?.navigationBar.backgroundColor = .none
        configView.registerButton.addTarget(self, action: #selector(registerButtonPressed), for: .touchUpInside)
    }
    @objc func registerButtonPressed(){
        if let email = configView.emailTextField.text, let password = configView.passwordTextField.text{
            Auth.auth().createUser(withEmail: email, password: password) { autoResult, erorr in
                if let error = erorr {
                    self.configView.errorDescriptionLabel.text = error.localizedDescription
                } else {
                    let chatVC = ChatViewController()
                    self.navigationController?.pushViewController(chatVC, animated: true)
                }
            }
        }
       
    }
}

extension RegisterViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.endEditing(true)
        return true
    }
}
