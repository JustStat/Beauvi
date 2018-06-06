//
//  PlaceAddPlaceAddPresenterTests.swift
//  Beauvi
//
//  Created by Kirill Varlamov on 18/05/2018.
//  Copyright © 2018 Eternity Mobile. All rights reserved.
//

import XCTest

class PlaceAddPresenterTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    class MockInteractor: PlaceAddInteractorInput {

    }

    class MockRouter: PlaceAddRouterInput {

    }

    class MockViewController: PlaceAddViewInput {

        func setupInitialState() {

        }
    }
}
