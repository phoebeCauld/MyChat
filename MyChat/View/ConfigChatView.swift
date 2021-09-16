//
//  ConfigChatView.swift
//  MyChat
//
//  Created by F1xTeoNtTsS on 13.09.2021.
//

import UIKit

class ConfigChatView: UIView {

    let chatView: UITableView = {
        let tabbleView = UITableView()
        tabbleView.backgroundColor = .gray
        tabbleView.translatesAutoresizingMaskIntoConstraints = false
        return tabbleView
    }()
    let messageView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let messageField: UITextField = {
        let textField = UITextField()
        textField.textAlignment = .left
        textField.borderStyle = .roundedRect
        textField.font = UIFont.systemFont(ofSize: 14)
        textField.backgroundColor = UIColor(named: "BrandLightPurple")
        textField.textColor = UIColor(named: "BrandPurple")
        textField.attributedPlaceholder = NSAttributedString(string: "Write a message...", attributes: [NSAttributedString.Key.foregroundColor: Colors.placeholderColor])
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let sendButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(systemName: "paperplane.fill"), for: .normal)
        button.tintColor = Colors.placeholderColor
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.contentMode = .scaleAspectFill
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    func setView(_ view: UIView){
        view.backgroundColor = UIColor(named: "BrandPurple")
        addSubview(view)
        setConstraints(view)
    }
    
    override func addSubview(_ view: UIView) {
        [chatView, messageView].forEach{view.addSubview($0)}
        [messageField, sendButton].forEach{messageView.addSubview($0)}
    }
    

    func setConstraints(_ view: UIView){
        NSLayoutConstraint.activate([
            chatView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            chatView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            chatView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            chatView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            
            messageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            messageView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            messageView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            messageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            messageView.topAnchor.constraint(equalTo: chatView.bottomAnchor),
            messageView.heightAnchor.constraint(equalToConstant: 60),
            
            messageField.leadingAnchor.constraint(equalTo: messageView.leadingAnchor,
                                                  constant: 20),
            messageField.topAnchor.constraint(equalTo: messageView.topAnchor,
                                              constant: 20),
            messageField.bottomAnchor.constraint(equalTo: messageView.bottomAnchor),
            messageField.heightAnchor.constraint(equalToConstant: 40),
            messageField.widthAnchor.constraint(greaterThanOrEqualToConstant: 300),
            
            sendButton.leadingAnchor.constraint(equalTo: messageField.trailingAnchor,
                                                constant: 20),
            sendButton.trailingAnchor.constraint(equalTo: messageView.trailingAnchor,
                                                 constant: -20),
            sendButton.topAnchor.constraint(equalTo: messageView.topAnchor,
                                              constant: 20),
            sendButton.bottomAnchor.constraint(equalTo: messageView.bottomAnchor),
            sendButton.widthAnchor.constraint(greaterThanOrEqualToConstant: 40),
            sendButton.heightAnchor.constraint(greaterThanOrEqualToConstant: 40),
        ])
    }
}
