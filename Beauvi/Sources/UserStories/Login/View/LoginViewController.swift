//
//  LoginLoginViewController.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 18/05/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, LoginViewInput {

    var output: LoginViewOutput!

    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var loginLabel: UITextField!
    @IBOutlet weak var passwordTextView: UITextField!
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        LoginModuleConfigurator().configureModuleForViewInput(viewInput: self)
        output.viewIsReady()
        self.hideKeyboardWhenTappedAround()
        self.singOnKeyboadToggle()
    }


    // MARK: LoginViewInput
    func setupInitialState() {
    }
    
    func showIncorrectLogin() {
        self.loginLabel.layer.borderColor = UIColor.beauviRed.cgColor
        self.loginLabel.layer.borderWidth = 2
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.loginLabel.layer.borderColor = UIColor.black.cgColor
            self.loginLabel.layer.borderWidth = 0
        }
        
    
    }
    
    func showIncorrectPassword() {
        self.passwordTextView.layer.borderColor = UIColor.beauviRed.cgColor
        self.passwordTextView.layer.borderWidth = 2
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.passwordTextView.layer.borderColor = UIColor.black.cgColor
            self.passwordTextView.layer.borderWidth = 0
        }
    }
    
    func showErrorMesssage(message: String) {
        errorLabel.isHidden = false
        errorLabel.text = message
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.errorLabel.isHidden = true
        }
    }
    
    @IBAction func loginButton(_ sender: Any) {
        output.needLoginUser(name: loginLabel.text, password: passwordTextView.text)
    }
    
    @IBAction func recoverButtonTap(_ sender: Any) {
        output.needRecoverPassword(login: loginLabel.text!)
    }
    
    @IBAction func registerButtonTap(_ sender: Any) {
        output.needCreateNewUser()
    }
}
