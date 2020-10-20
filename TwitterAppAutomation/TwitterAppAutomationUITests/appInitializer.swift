//
//  appInitializer.swift
//  TwitterAppAutomationUITests
//
//  Created by Jinal Shah on 10/7/20.
//  Copyright © 2020 Jinal Shah. All rights reserved.
//
/*
 Initialize Bundle ID For XCUITest
 */


import XCTest

let appStore = XCUIApplication(bundleIdentifier: "com.apple.AppStore")
let twitterApp = XCUIApplication(bundleIdentifier: "com.atebits.Tweetie2")

