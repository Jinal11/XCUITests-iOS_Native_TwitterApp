//
//  TestBase.swift
//  TwitterAppAutomationUITests
//
//  Created by Jinal Shah on 10/8/20.
//  Copyright © 2020 Jinal Shah. All rights reserved.
//
/*
 Base Class
 */

import XCTest

class TestBase: XCTestCase {
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
    }
    
    override func tearDown() {
        super.tearDown()
    }
}
