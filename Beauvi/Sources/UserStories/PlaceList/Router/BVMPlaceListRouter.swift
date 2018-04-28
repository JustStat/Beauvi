//
//  PlaceListBVMPlaceListRouter.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 06/04/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

import UIKit

class PlaceListRouter: PlaceListRouterInput {
    func showDetailWithPlace(from: PlaceListViewInput, place: Place) {
        let controller = from as! UIViewController
        let detailController = PlaceDetailViewController()
        detailController.place = place
        controller.navigationController?.pushViewController(detailController, animated: true)
    }
}
