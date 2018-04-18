//
//  BVMPlaceListBVMPlaceListConfigurator.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 06/04/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

import UIKit

class PlaceListModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? PlaceListViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: PlaceListViewController) {

        let router = PlaceListRouter()

        let presenter = PlaceListPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = PlaceListInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
