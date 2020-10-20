//
//  HomeElements.swift
//  TwitterAppAutomationUITests
//
//  Created by Jinal Shah on 10/19/20.
//  Copyright © 2020 Jinal Shah. All rights reserved.
//
/*
 *Initializing UIElements For Homescreen.
 */

import XCTest

final class HomeElements {
    
    
    let homeIcon : XCUIElement
    let searchIcon: XCUIElement
    
    let homeIconID = AccessibilityIdentifier.HomeScreen.homeButton
    let searchIconID = AccessibilityIdentifier.HomeScreen.searchButton
    
    
    required init() {
        
        homeIcon = twitterApp.otherElements[homeIconID]
        searchIcon = twitterApp.otherElements[searchIconID]
        
    }
}
