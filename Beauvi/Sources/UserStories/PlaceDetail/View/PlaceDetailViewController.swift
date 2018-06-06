//
//  PlaceDetailPlaceDetailViewController.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 20/04/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

import UIKit
import Auk
import GoogleMaps

class PlaceDetailViewController: UIViewController, PlaceDetailViewInput {

    var output: PlaceDetailViewOutput!
    var place : Place!
    
    @IBOutlet weak var galleryCarousel: UIScrollView!
    @IBOutlet weak var mainInfoView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var mapView: GMSMapView!
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        PlaceDetailModuleConfigurator().configureModuleForViewInput(viewInput: self)
        output.viewIsReady()
    }


    // MARK: PlaceDetailViewInput
    func setupInitialState() {
        self.automaticallyAdjustsScrollViewInsets = false
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.view.backgroundColor = .clear
        
        galleryCarousel.auk.settings.contentMode = .scaleAspectFit
        galleryCarousel.alwaysBounceVertical = false
        mainInfoView.backgroundColor = colorByType(type: place.placeType!)
        if place.gallery != nil {
            for photo : Photo in place.gallery! {
                galleryCarousel.auk.show(url: photo.url!)
            }
        }
        
        titleLabel.text = place.title
        descriptionTextView.text = place.detail
        
        
    }
    
    func colorByType(type:String) -> UIColor {
        switch type  {
        case "1":
            return UIColor.beauviPurple
        case "2":
            return UIColor.beauviDarkGreen
        case "3":
            return.beauviRed
        case "4":
            return.beauviBlue
        case "5":
            return.beauviGreen
        
        default:
            return .beauviRed
        }
    }
}
