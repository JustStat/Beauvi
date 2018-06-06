//
//  RegistrationRegistrationPresenter.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 19/05/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

class RegistrationPresenter: RegistrationModuleInput, RegistrationViewOutput, RegistrationInteractorOutput {
    
    weak var view: RegistrationViewInput!
    var interactor: RegistrationInteractorInput!
    var router: RegistrationRouterInput!

    func viewIsReady() {

    }
    
    func registerUser(name: String, login: String, password: String, confLogin: String, confPassword: String) {
        guard name != "" else {
            view.presentMessage(title: "Ошибка!", message: "Введите логин")
            return
        }
        guard login == confLogin else {
            view.presentMessage(title: "Ошибка!", message: "Адрес электронной почты не совпадает")
            return
        }
        guard password == confPassword else {
            view.presentMessage(title: "Ошибка!", message: "Пароль не совпадает")
            return
        }
        interactor.registerUser(name: name, login: login, password: password)
    }
    
    func interactorDidRegisterUser() {
        view.presentMessage(title: "Успех!", message: "Сообщение отправлено на ваш электронный адрес")
        router.presentProfile(from: view)
    }
    
    func interactorDidFailRegisterUser() {
        view.presentMessage(title: "Ошибка!", message: "Не удалось зарегистрироваться")
    }
}
