//
//  RegistrationRegistrationInteractorOutput.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 19/05/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

import Foundation

protocol RegistrationInteractorOutput: class {
    func interactorDidRegisterUser()
    func interactorDidFailRegisterUser()
}
