//
//  LoginLoginViewInput.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 18/05/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

protocol LoginViewInput: class {

    /**
        @author Kirill Varlamov
        Setup initial state of the view
    */

    func setupInitialState()
    func showIncorrectLogin()
    func showIncorrectPassword()
    func showErrorMesssage(message: String)
}
