//
//  BioViewController.swift
//  HomeWork206
//
//  Created by Андрей Блинов on 21.06.2023.
//

import UIKit

final class BioViewController: UIViewController {
    
    @IBOutlet var bioTextView: UITextView!
    
    var user: User!
    
    //MARK: - Override functions
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setupGradientBackground()
        title = "\(user.person.fullName) Bio"
        bioTextView.backgroundColor = .clear
        bioTextView.textColor = .white
        bioTextView.text = user.person.bio
    }
}
