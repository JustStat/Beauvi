//
//  PlaceAddPlaceAddConfiguratorTests.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 18/05/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

import XCTest

class PlaceAddModuleConfiguratorTests: XCTestCase {

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
        let viewController = PlaceAddViewControllerMock()
        let configurator = PlaceAddModuleConfigurator()

        //when
        configurator.configureModuleForViewInput(viewInput: viewController)

        //then
        XCTAssertNotNil(viewController.output, "PlaceAddViewController is nil after configuration")
        XCTAssertTrue(viewController.output is PlaceAddPresenter, "output is not PlaceAddPresenter")

        let presenter: PlaceAddPresenter = viewController.output as! PlaceAddPresenter
        XCTAssertNotNil(presenter.view, "view in PlaceAddPresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in PlaceAddPresenter is nil after configuration")
        XCTAssertTrue(presenter.router is PlaceAddRouter, "router is not PlaceAddRouter")

        let interactor: PlaceAddInteractor = presenter.interactor as! PlaceAddInteractor
        XCTAssertNotNil(interactor.output, "output in PlaceAddInteractor is nil after configuration")
    }

    class PlaceAddViewControllerMock: PlaceAddViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState() {
            setupInitialStateDidCall = true
        }
    }
}
