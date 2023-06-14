//
//  ViewController.swift
//  HomeWork206
//
//  Created by Андрей Блинов on 11.06.2023.
//

import UIKit

class LoginViewController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet var userName: UITextField!
    @IBOutlet var password: UITextField!
    @IBOutlet var logInButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTextView(for: userName)
        setupTextView(for: password)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard userName.text == "Eugeniya",
              password.text == "Password"
        else {
            showAlert(withTitle: "Incorrect Name or Password!", andMessage: "Please enter correct Name and Password")
            return }
        guard let loginVC = segue.destination as? WelcomeViewController else { return }
                    
        loginVC.welcomeLabelText = userName.text
    
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // MARK: - IBActions
    @IBAction func fogrotButtonsDidTapped(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            showAlert(withTitle: "Oops!", andMessage: "Your name is Eugeniya🙃")
        default:
            showAlert(withTitle: "Oops!", andMessage: "Your password is Password😎")
        }
    }
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userName.text = ""
        password.text = ""
    }
    // MARK: - Private methods
    private func setupTextView(for textView: UITextField) {
        textView.layer.borderColor = UIColor.systemBlue.cgColor
        textView.layer.borderWidth = 1
    }
}
// MARK: - AlertController
extension LoginViewController{
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
