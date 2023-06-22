//
//  WelcomeViewController.swift
//  HomeWork206
//
//  Created by Андрей Блинов on 11.06.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet var welcomeLabel: UILabel!
    var user: User!
    
    //MARK: - Override functions
    override func viewDidLoad() {
        super.viewDidLoad()
        setupWelcomeLabel() 
        view.setupGradientBackground()
    }
    
    // MARK: - Private methods
    private func setupWelcomeLabel() {
        welcomeLabel.textColor = UIColor.white
        welcomeLabel.text = "Welcome, \(user.person.fullName)!"
    }
    
}
