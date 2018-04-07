//
//  BackendlessConfigurator.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 17.02.2018.
//

class BackendlessConfigurator {
    class func configureBackendless() {
        Backendless.sharedInstance()!.hostURL = SERVER_URL
        Backendless.sharedInstance()!.initApp(APPLICATION_ID, apiKey: API_KEY)
        self.addMappingForPlace()
    }
    
    private class func addMappingForPlace() {
//        Backendless.sharedInstance().data.mapTable(toClass: "Place", type: Place.ofClass())
//        Backendless.sharedInstance().data.mapColumn(toProperty: Place.ofClass(), columnName: "title", propertyName: "name")
//        Backendless.sharedInstance().data.mapColumn(toProperty: Place.ofClass(), columnName: "detail", propertyName: "detail")
        Backendless.sharedInstance().data.mapColumn(toProperty: Place.ofClass(), columnName: "main_photo", propertyName: "mainPhotoUrl")
//        Backendless.sharedInstance().data.mapColumn(toProperty: Place.ofClass(), columnName: "gallery", propertyName: "gallery")
//        Backendless.sharedInstance().data.mapColumn(toProperty: Place.ofClass(), columnName: "objectId", propertyName: "placeId")
//        Backendless.sharedInstance().data.mapColumn(toProperty: Place.ofClass(), columnName: "ownerId", propertyName: "ownerId")
    }
}
