//
//  PlaceListPresenter.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 17.02.2018.
//

class PlaceListPresenter: PlaceListViewOutput {
    weak var view: PlaceListViewInput!
    
    func viewDidAppear() {
        self.view.presentAlert(message: "Router message")
    }
}
