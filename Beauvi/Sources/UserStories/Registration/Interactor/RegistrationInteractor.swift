//
//  RegistrationRegistrationInteractor.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 19/05/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

class RegistrationInteractor: RegistrationInteractorInput {

    weak var output: RegistrationInteractorOutput!
    
    func registerUser(name: String, login: String, password: String) {
        let user = BackendlessUser()
        user.email = login as NSString
        user.password = password as NSString
        user.name = name as NSString
        
        Backendless.sharedInstance().userService.register(user, response: { (user) in
            Backendless.sharedInstance().userService.currentUser = user
            self.output.interactorDidRegisterUser()
        }) { (error) in
            self.output.interactorDidFailRegisterUser()
        }
    }

}
