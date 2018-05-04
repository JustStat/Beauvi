//
//  PlaceDetailPlaceDetailConfigurator.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 20/04/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

import UIKit

class PlaceDetailModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? PlaceDetailViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: PlaceDetailViewController) {

        let router = PlaceDetailRouter()

        let presenter = PlaceDetailPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = PlaceDetailInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
