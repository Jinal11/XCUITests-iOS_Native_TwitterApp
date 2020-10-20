//
//  SearchPeopleElements.swift
//  TwitterAppAutomationUITests
//
//  Created by Jinal Shah on 10/15/20.
//  Copyright © 2020 Jinal Shah. All rights reserved.
//
/*
 *Initializing UIElements For Search Functionality.
 */


import XCTest

final class SearchPeopleElements {
    
    let searchTextField: XCUIElement
    let searchButton: XCUIElement
    let peopleTab: XCUIElement
    let latestButton: XCUIElement
    
    
    
    let searchTextFieldID = AccessibilityIdentifier.SearchFunctionality.searchTextField
    let searchButtonID = AccessibilityIdentifier.SearchFunctionality.searchButton
    let peopleTabID = AccessibilityIdentifier.SearchFunctionality.peopleButton
    let latestButtonID = AccessibilityIdentifier.SearchFunctionality.latestButton
    let loadingID = AccessibilityIdentifier.SearchFunctionality.resultLoading
    
    
    
    required init(){
        
        searchTextField = twitterApp.navigationBars.searchFields[searchTextFieldID]
        searchButton = twitterApp.buttons[searchButtonID]
        peopleTab = twitterApp.collectionViews.buttons[peopleTabID]
        latestButton = twitterApp.collectionViews.buttons[latestButtonID]
        
    }
    
}

