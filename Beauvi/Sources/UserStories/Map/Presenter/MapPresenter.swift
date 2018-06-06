//
//  MapMapPresenter.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 04/05/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

class MapPresenter: MapModuleInput, MapViewOutput, MapInteractorOutput {

    weak var view: MapViewInput!
    var interactor: MapInteractorInput!
    var router: MapRouterInput!

    func viewIsReady() {
        view.setupInitialState()
    }
}
