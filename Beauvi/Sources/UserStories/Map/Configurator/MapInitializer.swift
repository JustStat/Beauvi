//
//  MapMapInitializer.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 04/05/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

import UIKit

class MapModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var mapViewController: MapViewController!

    override func awakeFromNib() {

        let configurator = MapModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: mapViewController)
    }

}
