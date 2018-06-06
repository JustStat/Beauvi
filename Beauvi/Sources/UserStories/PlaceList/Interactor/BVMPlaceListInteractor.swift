//
//  BVMPlaceListBVMPlaceListInteractor.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 06/04/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

class PlaceListInteractor: PlaceListInteractorInput {

    weak var output: PlaceListInteractorOutput!
    
    func loadPlaces(filter: Filter?) {
        let dataStore = Backendless.sharedInstance().data.of(Place.ofClass())
        let builder = DataQueryBuilder()
        if filter != nil {
            if filter?.search == "" {
                builder?.setWhereClause("place_type = \(filter!.type.rawValue)")
            } else if (filter?.type.rawValue)! == 0 {
                builder?.setWhereClause("title LIKE '%\(filter!.search)%'")
            } else {
                builder?.setWhereClause("place_type = \(filter!.type.rawValue) AND title LIKE '%\(filter!.search)%'")
            }
            
            builder?.setPageSize(30)
        }
        dataStore?.find(builder, response: { (array) in
            let places = array as! [Place]
            self.output.interactorDidLoadPlaces(places: places)
        }, error: { (error) in
            print(error.debugDescription)
        })
        
    }

}
