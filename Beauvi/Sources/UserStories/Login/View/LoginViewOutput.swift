//
//  LoginLoginViewOutput.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 18/05/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

protocol LoginViewOutput {

    /**
        @author Kirill Varlamov
        Notify presenter that view is ready
    */

    func viewIsReady()
    func needLoginUser(name: String?, password: String?)
    func needRecoverPassword(login: String)
    func needCreateNewUser()
}
