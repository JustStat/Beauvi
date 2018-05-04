//
//  PlaceDetailPlaceDetailConfiguratorTests.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 20/04/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

import XCTest

class PlaceDetailModuleConfiguratorTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testConfigureModuleForViewController() {

        //given
        let viewController = PlaceDetailViewControllerMock()
        let configurator = PlaceDetailModuleConfigurator()

        //when
        configurator.configureModuleForViewInput(viewInput: viewController)

        //then
        XCTAssertNotNil(viewController.output, "PlaceDetailViewController is nil after configuration")
        XCTAssertTrue(viewController.output is PlaceDetailPresenter, "output is not PlaceDetailPresenter")

        let presenter: PlaceDetailPresenter = viewController.output as! PlaceDetailPresenter
        XCTAssertNotNil(presenter.view, "view in PlaceDetailPresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in PlaceDetailPresenter is nil after configuration")
        XCTAssertTrue(presenter.router is PlaceDetailRouter, "router is not PlaceDetailRouter")

        let interactor: PlaceDetailInteractor = presenter.interactor as! PlaceDetailInteractor
        XCTAssertNotNil(interactor.output, "output in PlaceDetailInteractor is nil after configuration")
    }

    class PlaceDetailViewControllerMock: PlaceDetailViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState() {
            setupInitialStateDidCall = true
        }
    }
}
