//
//  SettingsSettingsRouter.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 17/05/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

import UIKit

class SettingsRouter: SettingsRouterInput {
    func presentLogin(from: SettingsViewInput) {
        let controller = from as! UIViewController
        let loginVC = UIStoryboard(name: "Login", bundle: nil).instantiateViewController(withIdentifier: "Login")
        loginVC.tabBarItem = UITabBarItem(title: nil, image: UIImage(named: "tabBarSettings"), tag: 3)
        loginVC.tabBarItem.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
        let loginNavigationController = UINavigationController(rootViewController: loginVC)
        controller.tabBarController?.viewControllers?.insert(loginNavigationController, at: 2)
        controller.tabBarController?.viewControllers?.popLast()
        loginVC.tabBarController?.selectedIndex = 2
    }
    
    func presentAddPlace(from: SettingsViewInput) {
        let controller = from as! UIViewController
        let addPlaceVC = UIStoryboard(name: "PlaceAdd", bundle: nil).instantiateViewController(withIdentifier: "PlaceAdd")
        controller.navigationController?.pushViewController(addPlaceVC, animated: true)
    }
}
