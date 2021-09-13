//
//  ChatViewController.swift
//  MyChat
//
//  Created by F1xTeoNtTsS on 13.09.2021.
//

import UIKit

class ChatViewController: UIViewController {
    
    let configView = ConfigChatView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView.setView(view)
    }
    

}
