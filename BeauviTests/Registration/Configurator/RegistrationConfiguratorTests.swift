//
//  RegistrationRegistrationConfiguratorTests.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 19/05/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

import XCTest

class RegistrationModuleConfiguratorTests: XCTestCase {

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
        let viewController = RegistrationViewControllerMock()
        let configurator = RegistrationModuleConfigurator()

        //when
        configurator.configureModuleForViewInput(viewInput: viewController)

        //then
        XCTAssertNotNil(viewController.output, "RegistrationViewController is nil after configuration")
        XCTAssertTrue(viewController.output is RegistrationPresenter, "output is not RegistrationPresenter")

        let presenter: RegistrationPresenter = viewController.output as! RegistrationPresenter
        XCTAssertNotNil(presenter.view, "view in RegistrationPresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in RegistrationPresenter is nil after configuration")
        XCTAssertTrue(presenter.router is RegistrationRouter, "router is not RegistrationRouter")

        let interactor: RegistrationInteractor = presenter.interactor as! RegistrationInteractor
        XCTAssertNotNil(interactor.output, "output in RegistrationInteractor is nil after configuration")
    }

    class RegistrationViewControllerMock: RegistrationViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState() {
            setupInitialStateDidCall = true
        }
    }
}
