//
//  BVMPlaceListBVMPlaceListInteractor.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 06/04/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

class PlaceListInteractor: PlaceListInteractorInput {

    weak var output: PlaceListInteractorOutput!
    
    func loadPlaces() {
        let dataStore = Backendless.sharedInstance().data.of(Place.ofClass())
        dataStore?.find({
            (array) -> () in
            let places = array as! [Place]
            self.output.interactorDidLoadPlaces(places: places)
        },
                        error: {
                            (fault : Fault?) -> () in
                            print("Server reported an error: \(String(describing: fault))")
        })
        
    }

}
