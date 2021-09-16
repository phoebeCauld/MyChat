//
//  ChatViewController.swift
//  MyChat
//
//  Created by F1xTeoNtTsS on 13.09.2021.
//

import UIKit
import Firebase
class ChatViewController: UIViewController {
    
    let configView = ConfigChatView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView.setView(view)
        navigationSetup()
    }
    
    func navigationSetup() {
       navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Log Out", style: .plain, target: self, action: #selector(logOutPressed))
    }
    @objc func logOutPressed(){
        let firebaseAuth = Auth.auth()
    do {
      try firebaseAuth.signOut()
        navigationController?.popToRootViewController(animated: true)
    } catch let signOutError as NSError {
      print("Error signing out: %@", signOutError)
    }
    }

}
