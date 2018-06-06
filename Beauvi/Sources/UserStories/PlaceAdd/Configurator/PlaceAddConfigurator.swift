//
//  PlaceAddPlaceAddConfigurator.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 18/05/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

import UIKit

class PlaceAddModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? PlaceAddViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: PlaceAddViewController) {

        let router = PlaceAddRouter()

        let presenter = PlaceAddPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = PlaceAddInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
