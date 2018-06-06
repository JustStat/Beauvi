//
//  PlaceListBVMPlaceListPresenter.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 06/04/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

class PlaceListPresenter: PlaceListModuleInput, PlaceListViewOutput, PlaceListInteractorOutput {

    weak var view: PlaceListViewInput!
    var interactor: PlaceListInteractorInput!
    var router: PlaceListRouterInput!

    func viewIsReady() {
        interactor.loadPlaces(filter: nil)
        view.setupInitialState()
    }
    
    func didSelectItemWithPlace(place: Place) {
        router.showDetailWithPlace(from: view, place: place)
    }
    
    func loadPlacesesWithFilter(filter: Filter) {
        interactor.loadPlaces(filter: filter)
    }
    
    func interactorDidLoadPlaces(places: [Place]) {
        view.updateTableWithPlaces(places: places)
    }
    
}
