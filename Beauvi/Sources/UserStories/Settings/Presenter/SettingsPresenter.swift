//
//  SettingsSettingsPresenter.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 17/05/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

class SettingsPresenter: SettingsModuleInput, SettingsViewOutput, SettingsInteractorOutput {

    weak var view: SettingsViewInput!
    var interactor: SettingsInteractorInput!
    var router: SettingsRouterInput!

    func viewIsReady() {
        view.setupInitialState()
    }
    
    func viewWillAppear() {
        if Backendless.sharedInstance().userService.currentUser == nil {
            router.presentLogin(from: self.view)
        }
    }
    func viewDidTapAddPlace() {
        router.presentAddPlace(from: self.view)
    }
}
