//
//  PlaceListBVMPlaceListViewOutput.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 06/04/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

protocol PlaceListViewOutput {

    /**
        @author Kirill Varlamov
        Notify presenter that view is ready
    */

    func viewIsReady()
    func didSelectItemWithPlace(place: Place)
}
