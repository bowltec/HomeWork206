//
//  WelcomeViewController.swift
//  HomeWork206
//
//  Created by Андрей Блинов on 11.06.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    //MARK: IBOutlets:
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var welcomeLabelText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupWelcomeLabel()

    }
    
    
    private func setupWelcomeLabel() {
        welcomeLabel.textColor = UIColor.systemIndigo
        welcomeLabel.text = "Welcome, \(welcomeLabelText ?? "User")!"
    }
    
}

