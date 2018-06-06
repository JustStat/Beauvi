//
//  RecoverPasswordRecoverPasswordViewController.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 19/05/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

import UIKit

class RecoverPasswordViewController: UIViewController, RecoverPasswordViewInput {
    

    var output: RecoverPasswordViewOutput!
    private var login: String!

    @IBOutlet weak var loginTextField: UITextField!
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        RecoverPasswordModuleConfigurator().configureModuleForViewInput(viewInput: self)
        output.viewIsReady()
    }


    // MARK: RecoverPasswordViewInput
    func setupInitialState() {
        loginTextField.text = login
    }
    
    func setLoginText(login: String) {
        self.login = login
    }
    
    func presentMessage(title: String, message: String) {
        showMessageAlertController(title: title, message: message)
    }
    
    @IBAction func recoverButtonTap(_ sender: Any) {
        output.needRecoverUserPassword(login: loginTextField.text!)
    }
}
