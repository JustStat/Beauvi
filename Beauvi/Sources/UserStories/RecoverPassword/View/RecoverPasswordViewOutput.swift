//
//  RecoverPasswordRecoverPasswordViewOutput.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 19/05/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

protocol RecoverPasswordViewOutput {

    /**
        @author Kirill Varlamov
        Notify presenter that view is ready
    */

    func viewIsReady()
    func needRecoverUserPassword(login: String)
}
