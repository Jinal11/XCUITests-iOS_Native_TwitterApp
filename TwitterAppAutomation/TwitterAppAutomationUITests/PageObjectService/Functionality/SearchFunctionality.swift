//
//  SearchFunctionality.swift
//  TwitterAppAutomationUITests
//
//  Created by Jinal Shah on 10/15/20.
//  Copyright © 2020 Jinal Shah. All rights reserved.
//

import XCTest

final class SearchFunctionality : TestBase {
    
    let searchElements = SearchPeopleElements()
    let loadingText = AccessibilityIdentifier.SearchFunctionality.resultLoading
    let homeElements = HomeElements()
    
    /*
     * Search an account using "twitter search"
     * Find an Account on tapping "People"
     * Verify and wait for the Data loading
     */
    
    func search_People(_ peopleAccount :String) -> SearchFunctionality {
        
        homeElements.searchIcon.tap()
        searchElements.searchTextField.tap()
        searchElements.searchTextField.typeText(peopleAccount)
        sleep(10)
        searchElements.searchButton.tap()
        searchElements.peopleTab.tap()
        
        
        XCTAssert(searchElements
                    .peopleTab
                    .waitForExistence(timeout: 3000)
                  , "Data loading for People_Tab")
        
        return self
    }
    
    /*
     * Search posted Tweet using text / hashtag
     * Go to Latest Tweet tab
     */
    
    func SearchPostedTweet(_ postedTweet: String) -> SearchFunctionality {
        
        homeElements.searchIcon.tap()
        searchElements.searchTextField.tap()
        searchElements.searchTextField.typeText(postedTweet)
        sleep(10)
        searchElements.searchButton.tap()
        searchElements.latestButton.tap()
        return self
    }
    
}
