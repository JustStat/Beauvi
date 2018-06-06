//
//  RecoverPasswordRecoverPasswordViewInput.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 19/05/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

protocol RecoverPasswordViewInput: class {

    /**
        @author Kirill Varlamov
        Setup initial state of the view
    */

    func setupInitialState()
    func setLoginText(login: String)
    func presentMessage(title: String, message: String)
}
