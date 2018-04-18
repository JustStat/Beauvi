//
//  BVMPlaceListBVMPlaceListInitializer.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 06/04/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

import UIKit

class PlaceListModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var placelistViewController: PlaceListViewController!

    override func awakeFromNib() {

        let configurator = PlaceListModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: placelistViewController)
    }

}
