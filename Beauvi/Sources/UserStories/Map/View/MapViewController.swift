//
//  MapMapViewController.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 04/05/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

import UIKit
import GoogleMaps

class MapViewController: UIViewController, MapViewInput {

    var output: MapViewOutput!
    var map: GMSMapView!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        MapModuleConfigurator().configureModuleForViewInput(viewInput: self);
        output.viewIsReady()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
//        setupInitialState()
    }


    // MARK: MapViewInput
    func setupInitialState() {
        view.backgroundColor = .white
        map = GMSMapView()
        view.addSubview(map)
        map.autoPinEdgesToSuperviewEdges()
        let camera = GMSCameraPosition(target: CLLocationCoordinate2D(latitude: 43.027672, longitude: 131.906622), zoom: 10, bearing: 1, viewingAngle: 1)
        map.camera = camera
        let marker = GMSMarker(position: CLLocationCoordinate2D(latitude: 43.027672, longitude: 131.906622))
        marker.title = "Жопа мира"
        marker.map = map
        
    }
}
