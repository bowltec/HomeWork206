//
//  TabBarController.swift
//  HomeWork206
//
//  Created by Андрей Блинов on 20.06.2023.
//

import UIKit

final class TabBarController: UITabBarController {

    //MARK: - Override functions
    override func viewDidLoad() {
        super.viewDidLoad()
        let appearance = UITabBarAppearance()
        tabBar.standardAppearance = appearance
        tabBar.scrollEdgeAppearance = appearance
    }
    
}
