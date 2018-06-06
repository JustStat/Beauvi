//
//  SettingsSettingsViewController.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 17/05/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, SettingsViewInput {

    var output: SettingsViewOutput!

    @IBOutlet weak var nickNameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        SettingsModuleConfigurator().configureModuleForViewInput(viewInput: self)
        output.viewIsReady()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        output.viewWillAppear()
    }


    // MARK: SettingsViewInput
    func setupInitialState() {
        if let user = Backendless.sharedInstance().userService.currentUser {
            nickNameLabel.text = user.name! as String
            emailLabel.text = user.email! as String
        }
    }
    
    @IBAction func logoutButtonTap(_ sender: Any) {
        Backendless.sharedInstance().userService.logout({ (info) in
            self.output.viewWillAppear()
        }) { (error) in
            print(error?.detail)
        }
    }
    
    @IBAction func addPlaceTap(_ sender: Any) {
        output.viewDidTapAddPlace()
    }
}
