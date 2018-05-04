//
//  PlaceDetailPlaceDetailViewController.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 20/04/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

import UIKit
import Auk

class PlaceDetailViewController: UIViewController, PlaceDetailViewInput {

    var output: PlaceDetailViewOutput!
    let galleryCarousel = UIScrollView()
    var place : Place!
    

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        PlaceDetailModuleConfigurator().configureModuleForViewInput(viewInput: self)
        output.viewIsReady()
    }


    // MARK: PlaceDetailViewInput
    func setupInitialState() {
        self.automaticallyAdjustsScrollViewInsets = false
        self.view.backgroundColor = .white
        self.view.addSubview(galleryCarousel)
        
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.view.backgroundColor = .clear
        galleryCarousel.autoPinEdge(toSuperviewEdge: .right)
        galleryCarousel.autoPinEdge(toSuperviewEdge: .left)
        galleryCarousel.autoPinEdge(toSuperviewEdge: .top, withInset: 0)
        galleryCarousel.autoSetDimension(.height, toSize: 230)
        galleryCarousel.auk.settings.contentMode = .center
        galleryCarousel.alwaysBounceVertical = false
        if place.gallery != nil {
            for photo : Photo in place.gallery! {
                galleryCarousel.auk.show(url: photo.url!)
            }
        }
        
        let mainInfoView = UIView()
        self.view.addSubview(mainInfoView)
        mainInfoView.autoPinEdge(.top, to: .bottom, of: galleryCarousel)
        mainInfoView.autoPinEdge(toSuperviewEdge: .left, withInset: 28)
        mainInfoView.autoPinEdge(toSuperviewEdge: .right, withInset: 28)
        mainInfoView.autoSetDimension(.height, toSize: 50)
        mainInfoView.backgroundColor = .beauviRed
    }
}
