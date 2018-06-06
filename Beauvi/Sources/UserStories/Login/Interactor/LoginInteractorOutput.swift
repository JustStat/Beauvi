//
//  LoginLoginInteractorOutput.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 18/05/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

import Foundation

protocol LoginInteractorOutput: class {
    func didLoginUser()
    func failLoginUser(error: Fault)
}
