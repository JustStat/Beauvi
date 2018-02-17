//
//  PlaceListAssembly.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 17.02.2018.
//

import UIKit

let controllerId = "PlaceListViewController"

class PlaceListAssembly {
    class func viewController() -> PlaceListViewController {
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: controllerId) as! PlaceListViewController
        let presenter = PlaceListPresenter()
        
        viewController.output = presenter
        presenter.view = viewController
        
        return viewController
    }
}
