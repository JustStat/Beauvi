//
//  LoginLoginPresenter.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 18/05/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

class LoginPresenter: LoginModuleInput, LoginViewOutput, LoginInteractorOutput {

    weak var view: LoginViewInput!
    var interactor: LoginInteractorInput!
    var router: LoginRouterInput!

    func viewIsReady() {

    }
    
    func needLoginUser(name: String?, password: String?) {
        if name == "" {
            view.showIncorrectLogin()
            return
        }
        if password == "" {
            view.showIncorrectPassword()
            return
        }
        interactor.loginUser(name: name!, password: password!)
    }
    
    func needRecoverPassword(login: String) {
        router.presentRecover(from: self.view, login: login)
    }
    
    func needCreateNewUser() {
        router.presentRegister(from: self.view)
    }
    
    func didLoginUser() {
        router.presentProfile(from: self.view)
    }
    
    func failLoginUser(error: Fault) {
        view.showErrorMesssage(message: error.message)
    }
}
