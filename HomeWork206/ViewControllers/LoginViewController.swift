//
//  ViewController.swift
//  HomeWork206
//
//  Created by Андрей Блинов on 11.06.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    let user = User.getUser()

    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTF.text = user.login
        passwordTF.text = user.password
        setupTextView(for: userNameTF)
        setupTextView(for: passwordTF)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        viewControllers.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                guard let userInfoVC = navigationVC.topViewController as? InfoViewController else { return }
                userInfoVC.user = user
            }
        }
    }
    
    // MARK: - IBActions
    @IBAction func logInPressed() {
        guard userNameTF.text == user.login,
              passwordTF.text == user.password
        else {
            showAlert(withTitle: "Incorrect Name or Password!",
                      andMessage: "Please enter correct Name and Password",
                      for: passwordTF)
            return }
        
        performSegue(withIdentifier: "showWelcomeSegue", sender: nil)
    }
    
    @IBAction func fogrotButtonsDidTapped(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(withTitle: "Oops!", andMessage: "Your name is \(user.login)🙃")
        : showAlert(withTitle: "Oops!", andMessage: "Your password is \(user.password)😎")
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
