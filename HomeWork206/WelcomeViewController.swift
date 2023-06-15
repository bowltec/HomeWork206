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
    
    var welcomeLabelText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupWelcomeLabel() 
        setupGradientBackground()
    }
    
    private func setupWelcomeLabel() {
        welcomeLabel.textColor = UIColor.systemIndigo
        welcomeLabel.text = "Welcome, \(welcomeLabelText ?? "User")!"
    }
    
}
//MARK: - Setup View Background
extension WelcomeViewController {
    private func setupGradientBackground() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        gradientLayer.colors = [UIColor.red.cgColor, UIColor.green.cgColor]
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
