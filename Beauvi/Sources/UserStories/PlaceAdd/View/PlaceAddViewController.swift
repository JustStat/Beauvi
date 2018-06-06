//
//  PlaceAddPlaceAddViewController.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 18/05/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

import UIKit

class PlaceAddViewController: UIViewController, PlaceAddViewInput {

    var output: PlaceAddViewOutput!

    @IBOutlet weak var addTitleTextField: UITextField!
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        PlaceAddModuleConfigurator().configureModuleForViewInput(viewInput: self)
        output.viewIsReady()
    }


    // MARK: PlaceAddViewInput
    func setupInitialState() {
        addTitleTextField.attributedPlaceholder = NSAttributedString(string: "ВВЕДИТЕ НАЗВАНИЕ", attributes: [NSAttributedStringKey.foregroundColor : UIColor.white])
    }
}
