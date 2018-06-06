//
//  SettingsSettingsViewOutput.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 17/05/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

protocol SettingsViewOutput {

    /**
        @author Kirill Varlamov
        Notify presenter that view is ready
    */

    func viewIsReady()
    func viewWillAppear()
    func viewDidTapAddPlace()
}
