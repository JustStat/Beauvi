//
//  RecoverPasswordRecoverPasswordConfiguratorTests.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 19/05/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

import XCTest

class RecoverPasswordModuleConfiguratorTests: XCTestCase {

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
        let viewController = RecoverPasswordViewControllerMock()
        let configurator = RecoverPasswordModuleConfigurator()

        //when
        configurator.configureModuleForViewInput(viewInput: viewController)

        //then
        XCTAssertNotNil(viewController.output, "RecoverPasswordViewController is nil after configuration")
        XCTAssertTrue(viewController.output is RecoverPasswordPresenter, "output is not RecoverPasswordPresenter")

        let presenter: RecoverPasswordPresenter = viewController.output as! RecoverPasswordPresenter
        XCTAssertNotNil(presenter.view, "view in RecoverPasswordPresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in RecoverPasswordPresenter is nil after configuration")
        XCTAssertTrue(presenter.router is RecoverPasswordRouter, "router is not RecoverPasswordRouter")

        let interactor: RecoverPasswordInteractor = presenter.interactor as! RecoverPasswordInteractor
        XCTAssertNotNil(interactor.output, "output in RecoverPasswordInteractor is nil after configuration")
    }

    class RecoverPasswordViewControllerMock: RecoverPasswordViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState() {
            setupInitialStateDidCall = true
        }
    }
}
