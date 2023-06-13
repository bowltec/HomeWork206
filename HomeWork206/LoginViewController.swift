//
//  ViewController.swift
//  HomeWork206
//
//  Created by Андрей Блинов on 11.06.2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var userName: UITextField!
    @IBOutlet var password: UITextField!
    @IBOutlet var logInButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        setupTextView(for: userName)
        setupTextView(for: password)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let loginVC = segue.destination as? WelcomeViewController else { return }
        loginVC.welcomeLabelText = userName.text
       
    }
    
    // MARK: - Private methods
    private func setupTextView(for textView: UITextField) {
        textView.layer.borderColor = UIColor.systemBlue.cgColor
        textView.layer.borderWidth = 1
    }
}

