//
//  PlaceDetailPlaceDetailInitializer.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 20/04/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

import UIKit

class PlaceDetailModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var placedetailViewController: PlaceDetailViewController!

    override func awakeFromNib() {

        let configurator = PlaceDetailModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: placedetailViewController)
    }

}
