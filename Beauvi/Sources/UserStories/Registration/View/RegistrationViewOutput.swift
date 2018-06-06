//
//  RegistrationRegistrationViewOutput.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 19/05/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

protocol RegistrationViewOutput {

    /**
        @author Kirill Varlamov
        Notify presenter that view is ready
    */

    func viewIsReady()
    func registerUser(name: String, login: String, password : String, confLogin: String, confPassword : String)
}
