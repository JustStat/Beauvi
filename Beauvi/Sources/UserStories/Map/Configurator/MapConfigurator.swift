//
//  MapMapConfigurator.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 04/05/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

import UIKit

class MapModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? MapViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: MapViewController) {

        let router = MapRouter()

        let presenter = MapPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = MapInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
