//
//  SettingsSettingsInitializer.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 17/05/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

import UIKit

class SettingsModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var settingsViewController: SettingsViewController!

    override func awakeFromNib() {

        let configurator = SettingsModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: settingsViewController)
    }

}
