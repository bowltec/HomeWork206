//
//  UIView + Extension.swift
//  HomeWork206
//
//  Created by Андрей Блинов on 22.06.2023.
//

import UIKit

extension UIView {
        func setupGradientBackground() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height)
        gradientLayer.colors = [UIColor.green.cgColor, UIColor.red.cgColor]
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}
