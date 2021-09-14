//
//  ConfigWelcomeView.swift
//  MyChat
//
//  Created by F1xTeoNtTsS on 13.09.2021.
//

import UIKit

class ConfigWelcomeView: UIView {

    let titleLabel: UILabel = {
       let label = UILabel()
        label.text = ""
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 50, weight: .black)
        label.textColor = UIColor(named: "BrandBlue")
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let logInButton: UIButton = {
       let button = UIButton()
        button.setTitle("Log In", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.backgroundColor = UIColor(named: "BrandBlue")
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let registerButton: UIButton = {
       let button = UIButton()
        button.setTitle("Register", for: .normal)
        button.setTitleColor(UIColor(named: "BrandBlue"), for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.backgroundColor = UIColor(named: "BrandLightBlue")
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    func setView(_ view: UIView){
        view.backgroundColor = .white
        addSubview(view)
        setConstraints(view)
    }
    
    override func addSubview(_ view: UIView) {
        [titleLabel,logInButton,registerButton].forEach{view.addSubview($0)}
    }
    
    func setConstraints(_ view: UIView){
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            titleLabel.heightAnchor.constraint(greaterThanOrEqualToConstant: 60),
            logInButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logInButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            logInButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            logInButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            logInButton.heightAnchor.constraint(equalToConstant: 60),
            registerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            registerButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            registerButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            registerButton.bottomAnchor.constraint(equalTo: logInButton.topAnchor,
                                                   constant: 10),
            registerButton.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
}

