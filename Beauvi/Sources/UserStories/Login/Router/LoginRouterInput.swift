//
//  LoginLoginRouterInput.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 18/05/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

import Foundation

protocol LoginRouterInput {
    func presentProfile(from: LoginViewInput)
    func presentRecover(from: LoginViewInput, login: String)
    func presentRegister(from: LoginViewInput)
}
