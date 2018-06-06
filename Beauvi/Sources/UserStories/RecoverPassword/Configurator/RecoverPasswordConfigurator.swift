//
//  RecoverPasswordRecoverPasswordConfigurator.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 19/05/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

import UIKit

class RecoverPasswordModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? RecoverPasswordViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: RecoverPasswordViewController) {

        let router = RecoverPasswordRouter()

        let presenter = RecoverPasswordPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = RecoverPasswordInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
