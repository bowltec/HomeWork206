//
//  UIViewSetup.swift
//  HomeWork206
//
//  Created by Андрей Блинов on 19.06.2023.
//

import UIKit

extension UIView {
        func setupGradientBackground() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        gradientLayer.colors = [UIColor.red.cgColor, UIColor.green.cgColor]
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}

extension UIViewController {
    open override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}
