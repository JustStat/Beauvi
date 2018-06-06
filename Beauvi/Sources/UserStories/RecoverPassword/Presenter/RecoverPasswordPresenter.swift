//
//  RecoverPasswordRecoverPasswordPresenter.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 19/05/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

class RecoverPasswordPresenter: RecoverPasswordModuleInput, RecoverPasswordViewOutput, RecoverPasswordInteractorOutput {

    weak var view: RecoverPasswordViewInput!
    var interactor: RecoverPasswordInteractorInput!
    var router: RecoverPasswordRouterInput!

    func viewIsReady() {
        view.setupInitialState()
    }
    
    func setLogin(login : String) {
        view.setLoginText(login: login)
    }
    
    func needRecoverUserPassword(login: String) {
        if login != "" {
            interactor.recoverUserPassword(login: login)
        }
    }
    
    func interctorDidFinishRecover() {
        view.presentMessage(title: "Успех!", message: "Сообщение отправлено на ваш электронный адрес")
    }
    
    func interactorDidFailRecover() {
        view.presentMessage(title: "Ошибка!", message: "Не удалось восстановить пароль")
    }
}
