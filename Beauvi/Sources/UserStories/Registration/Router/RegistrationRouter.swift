//
//  RegistrationRegistrationRouter.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 19/05/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

import UIKit

class RegistrationRouter: RegistrationRouterInput {
    func presentProfile(from: RegistrationViewInput) {
        let controller = from as! UIViewController
        let loginVC = UIStoryboard(name: "Settings", bundle: nil).instantiateViewController(withIdentifier: "Settings")
        loginVC.tabBarItem = UITabBarItem(title: nil, image: UIImage(named: "tabBarSettings"), tag: 3)
        loginVC.tabBarItem.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
        let profileNavigationController = UINavigationController(rootViewController: loginVC)
        controller.tabBarController?.viewControllers?.insert(profileNavigationController, at: 2)
        controller.tabBarController?.viewControllers?.popLast()
        loginVC.tabBarController?.selectedIndex = 2
    }
}
