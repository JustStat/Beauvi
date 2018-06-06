//
//  PlaceAddPlaceAddPresenter.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 18/05/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

class PlaceAddPresenter: PlaceAddModuleInput, PlaceAddViewOutput, PlaceAddInteractorOutput {

    weak var view: PlaceAddViewInput!
    var interactor: PlaceAddInteractorInput!
    var router: PlaceAddRouterInput!

    func viewIsReady() {
        view.setupInitialState()
    }
}
