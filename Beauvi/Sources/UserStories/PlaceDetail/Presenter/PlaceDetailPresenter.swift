//
//  PlaceDetailPlaceDetailPresenter.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 20/04/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

class PlaceDetailPresenter: PlaceDetailModuleInput, PlaceDetailViewOutput, PlaceDetailInteractorOutput {

    weak var view: PlaceDetailViewInput!
    var interactor: PlaceDetailInteractorInput!
    var router: PlaceDetailRouterInput!

    func viewIsReady() {
        view.setupInitialState()
    }
}
