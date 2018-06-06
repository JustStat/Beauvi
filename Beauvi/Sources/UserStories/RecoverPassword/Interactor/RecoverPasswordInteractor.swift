//
//  RecoverPasswordRecoverPasswordInteractor.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 19/05/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

class RecoverPasswordInteractor: RecoverPasswordInteractorInput {

    weak var output: RecoverPasswordInteractorOutput!
    
    func recoverUserPassword(login: String) {
        Backendless.sharedInstance().userService.restorePassword(login, response: { (data) in
            self.output.interctorDidFinishRecover()
        }) { (erorr) in
            print(erorr.debugDescription)
            self.output.interactorDidFailRecover()
        }
    }
}
