//
//  GoogleConfigurator.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 04.05.2018.
//

import UIKit
import GoogleMaps
import GooglePlaces

class GoogleConfigurator {
    class func configureGoogle() {
        GMSServices.provideAPIKey("AIzaSyBgl1Q8KAC4G6dY3S8AAl2VgIRyvXPM2zY")
        GMSPlacesClient.provideAPIKey("AIzaSyBgl1Q8KAC4G6dY3S8AAl2VgIRyvXPM2zY")
    }
}
