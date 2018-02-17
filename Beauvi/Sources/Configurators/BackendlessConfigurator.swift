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
        
    }
}
