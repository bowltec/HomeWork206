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
    // MARK: - IBActions
    
    @IBAction func fogrotButtonsDidTapped(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            showAlert(withTitle: "Oops!", andMessage: "Your name is User")
        default:
            showAlert(withTitle: "Oops!", andMessage: "Your password is Password")
        }
    }
    
    
    // MARK: - Private methods
    private func setupTextView(for textView: UITextField) {
        textView.layer.borderColor = UIColor.systemBlue.cgColor
        textView.layer.borderWidth = 1
    }
}

extension LoginViewController {
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

