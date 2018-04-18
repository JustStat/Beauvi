//
//  PlaceListBVMPlaceListViewInput.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 06/04/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

protocol PlaceListViewInput: class {

    /**
        @author Kirill Varlamov
        Setup initial state of the view
    */

    func setupInitialState()
    func updateTableWithPlaces(places: [Place])
}
