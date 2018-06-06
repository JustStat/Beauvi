//
//  LoginLoginInteractor.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 18/05/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

class LoginInteractor: LoginInteractorInput {

    weak var output: LoginInteractorOutput!
    
    func loginUser(name: String, password: String) {
        Backendless.sharedInstance().userService.login(name, password: password, response: { (user) in
            Backendless.sharedInstance().userService.setStayLoggedIn(true)
            self.output.didLoginUser()
        }) { (error) in
            self.output.failLoginUser(error: error!)
        }
    }

}
