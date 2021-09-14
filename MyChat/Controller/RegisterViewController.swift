//
//  RegisterViewController.swift
//  MyChat
//
//  Created by F1xTeoNtTsS on 13.09.2021.
//

import UIKit

class RegisterViewController: UIViewController {

    let configView = ConfigRegisterView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView.setView(view)
        configView.emailTextField.delegate = self
        configView.passwordTextField.delegate = self
        self.navigationController?.navigationBar.backgroundColor = .none
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
