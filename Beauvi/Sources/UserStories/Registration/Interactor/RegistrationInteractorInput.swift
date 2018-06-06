//
//  RegistrationRegistrationInteractorInput.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 19/05/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

import Foundation

protocol RegistrationInteractorInput {
    func registerUser(name: String, login: String, password: String)
}
