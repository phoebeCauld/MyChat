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
    }


}

