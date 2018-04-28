//
//  PlaceListBVMPlaceListRouterInput.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 06/04/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

import Foundation

protocol PlaceListRouterInput {
    func showDetailWithPlace(from: PlaceListViewInput, place: Place)
}
