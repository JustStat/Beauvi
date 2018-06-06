//
//  RecoverPasswordRecoverPasswordInitializer.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 19/05/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

import UIKit

class RecoverPasswordModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var recoverpasswordViewController: RecoverPasswordViewController!

    override func awakeFromNib() {

        let configurator = RecoverPasswordModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: recoverpasswordViewController)
    }

}
