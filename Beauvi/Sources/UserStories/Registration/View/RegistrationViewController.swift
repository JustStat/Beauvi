//
//  RegistrationRegistrationViewController.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 19/05/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController, RegistrationViewInput {

    var output: RegistrationViewOutput!

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var confEmailTextField: UITextField!
    @IBOutlet weak var passwordTextFIeld: UITextField!
    @IBOutlet weak var confPasswordTextField: UITextField!
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        RegistrationModuleConfigurator().configureModuleForViewInput(viewInput: self)
        output.viewIsReady()
        self.hideKeyboardWhenTappedAround()
        self.singOnKeyboadToggle()
    }


    // MARK: RegistrationViewInput
    func setupInitialState() {
    }
    
    func presentMessage(title: String, message: String) {
        showMessageAlertController(title: title, message: message)
    }
    
    @IBAction func registerButtonTap(_ sender: Any) {
        output.registerUser(name: nameTextField.text!, login: emailTextField.text!, password: confPasswordTextField.text!, confLogin: confEmailTextField.text!, confPassword: confPasswordTextField.text!)
    }
}
