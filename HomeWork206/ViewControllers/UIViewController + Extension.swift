//
//  UIViewController + Extension.swift
//  HomeWork206
//
//  Created by Андрей Блинов on 22.06.2023.
//
import UIKit

extension UIViewController {
    open override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}
