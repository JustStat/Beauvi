//
//  RegistrationRegistrationConfigurator.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 19/05/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

import UIKit

class RegistrationModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? RegistrationViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: RegistrationViewController) {

        let router = RegistrationRouter()

        let presenter = RegistrationPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = RegistrationInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
