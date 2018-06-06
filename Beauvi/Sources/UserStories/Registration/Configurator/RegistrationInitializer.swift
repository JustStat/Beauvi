//
//  RegistrationRegistrationInitializer.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 19/05/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

import UIKit

class RegistrationModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var registrationViewController: RegistrationViewController!

    override func awakeFromNib() {

        let configurator = RegistrationModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: registrationViewController)
    }

}
