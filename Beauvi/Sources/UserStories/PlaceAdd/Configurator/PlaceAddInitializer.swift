//
//  PlaceAddPlaceAddInitializer.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 18/05/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

import UIKit

class PlaceAddModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var placeaddViewController: PlaceAddViewController!

    override func awakeFromNib() {

        let configurator = PlaceAddModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: placeaddViewController)
    }

}
