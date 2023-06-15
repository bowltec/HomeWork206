//
//  ViewController.swift
//  HomeWork206
//
//  Created by Андрей Блинов on 11.06.2023.
//

import UIKit

class LoginViewController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private var user = "User"
    private var password = "Password"

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTextView(for: userNameTF)
        setupTextView(for: passwordTF)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        
        welcomeVC.welcomeLabelText = user
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - IBActions
    @IBAction func logInPressed() {
        guard userNameTF.text == user,
              passwordTF.text == password
        else {
            showAlert(withTitle: "Incorrect Name or Password!",
                      andMessage: "Please enter correct Name and Password",
                      for: passwordTF)
            return }
        
        performSegue(withIdentifier: "showWelcomeSegue", sender: nil)
    }
    
    @IBAction func fogrotButtonsDidTapped(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(withTitle: "Oops!", andMessage: "Your name is Eugeniya🙃")
        : showAlert(withTitle: "Oops!", andMessage: "Your password is Password😎")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    // MARK: - Private methods
    private func setupTextView(for textView: UITextField) {
        textView.layer.borderColor = UIColor.systemBlue.cgColor
        textView.layer.borderWidth = 1
    }
}

// MARK: - AlertController
extension LoginViewController {
    private func showAlert(
        withTitle title: String,
        andMessage message: String,
        for textField: UITextField? = nil
    ) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
