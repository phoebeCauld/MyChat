//
//  ConfigRegisterView.swift
//  MyChat
//
//  Created by F1xTeoNtTsS on 13.09.2021.
//

import UIKit

class ConfigRegisterView: UIView {

    let emailView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let passwordView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let emailTextField: UITextField = {
        let textField = UITextField()
        textField.font = UIFont.systemFont(ofSize: 25)
        textField.minimumFontSize = 17
        textField.autocapitalizationType = .none
        textField.textAlignment = .center
        textField.attributedPlaceholder = NSAttributedString(string: "Email", attributes: [NSAttributedString.Key.foregroundColor: Colors.placeholderColor])
        textField.textColor = UIColor(named: "BrandBlue")
        textField.returnKeyType = .next
        textField.adjustsFontSizeToFitWidth = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let emailImage: UIImageView = {
       let imageView = UIImageView()
        imageView.image = UIImage(named: "textfield")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    let passwordImage: UIImageView = {
       let imageView = UIImageView()
        imageView.image = UIImage(named: "textfield")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.font = UIFont.systemFont(ofSize: 25)
        textField.minimumFontSize = 17
        textField.isSecureTextEntry = true
        textField.textAlignment = .center
        textField.textColor = UIColor(named: "BrandBlue")
        textField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor: Colors.placeholderColor])
        textField.returnKeyType = .join
        textField.adjustsFontSizeToFitWidth = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let registerButton: UIButton = {
        let button = UIButton()
        button.setTitle("Register", for: .normal)
        button.setTitleColor(UIColor(named: "BrandBlue"), for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let errorDescriptionLabel: UILabel = {
       let label = UILabel()
        label.textColor = .red
        label.numberOfLines = 0
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    func setView(_ view: UIView){
        view.backgroundColor = UIColor(named: "BrandLightBlue")
        addSubview(view)
        setConstraints(view)
    }
    
    override func addSubview(_ view: UIView) {
        [emailImage,emailTextField].forEach{emailView.addSubview($0)}
        [passwordImage,passwordTextField,registerButton, errorDescriptionLabel].forEach{passwordView.addSubview($0)}
        [emailView,passwordView].forEach{view.addSubview($0)}
    }
    
    func setConstraints(_ view: UIView){
        NSLayoutConstraint.activate([
            emailView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            emailView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            emailView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            emailView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            emailView.heightAnchor.constraint(equalToConstant: 180),
            
            passwordView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordView.topAnchor.constraint(equalTo: emailView.bottomAnchor,
                                              constant: -100),
            passwordView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            passwordView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            passwordView.heightAnchor.constraint(equalToConstant: 200),
            
            emailImage.topAnchor.constraint(equalTo: emailView.topAnchor,
                                            constant: 20),
            emailImage.bottomAnchor.constraint(equalTo: emailView.bottomAnchor,
                                            constant: -20),
            emailImage.trailingAnchor.constraint(equalTo: emailView.trailingAnchor),
            emailImage.leadingAnchor.constraint(equalTo: emailView.leadingAnchor),
            emailTextField.topAnchor.constraint(equalTo: emailView.topAnchor,
                                                constant: 50),
            emailTextField.trailingAnchor.constraint(equalTo: emailView.trailingAnchor,
                                                     constant: -50),
            emailTextField.leadingAnchor.constraint(equalTo: emailView.leadingAnchor,
                                                    constant: 50),
            emailTextField.bottomAnchor.constraint(equalTo: emailView.bottomAnchor,
                                            constant: -82),
            
            passwordImage.topAnchor.constraint(equalTo: passwordView.topAnchor,
                                            constant: 20),
            passwordImage.bottomAnchor.constraint(equalTo: passwordView.bottomAnchor,
                                            constant: -20),
            passwordImage.trailingAnchor.constraint(equalTo: passwordView.trailingAnchor),
            passwordImage.leadingAnchor.constraint(equalTo: passwordView.leadingAnchor),
            
            passwordTextField.topAnchor.constraint(equalTo: passwordView.topAnchor,
                                                constant: 50),
            passwordTextField.trailingAnchor.constraint(equalTo: passwordView.trailingAnchor,
                                                     constant: -50),
            passwordTextField.leadingAnchor.constraint(equalTo: passwordView.leadingAnchor,
                                                    constant: 50),
            passwordTextField.bottomAnchor.constraint(equalTo: passwordView.bottomAnchor,
                                            constant: -82),
            errorDescriptionLabel.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor,
                                                       constant: 15),
            errorDescriptionLabel.trailingAnchor.constraint(equalTo: passwordView.trailingAnchor,
                                                            constant: -30),
            errorDescriptionLabel.leadingAnchor.constraint(equalTo: passwordView.leadingAnchor,
                                                           constant: 30),
            errorDescriptionLabel.heightAnchor.constraint(equalToConstant: 30),
            registerButton.topAnchor.constraint(equalTo: errorDescriptionLabel.bottomAnchor,
                                                constant: 15),
            registerButton.leadingAnchor.constraint(equalTo: passwordView.leadingAnchor),
            registerButton.trailingAnchor.constraint(equalTo: passwordView.trailingAnchor),
            registerButton.bottomAnchor.constraint(equalTo: passwordView.bottomAnchor)
        ])
    }
}

enum Colors {
    static let placeholderColor = #colorLiteral(red: 0.8759351373, green: 0.8707285523, blue: 0.8799377084, alpha: 1)
}
