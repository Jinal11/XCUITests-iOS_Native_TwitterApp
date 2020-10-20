//
//  FollowFunctionality.swift
//  TwitterAppAutomationUITests
//
//  Created by Jinal Shah on 10/15/20.
//  Copyright © 2020 Jinal Shah. All rights reserved.
//

import XCTest

final class FollowFuntionality : TestBase{
    
    let followElements = FollowElements()
    let veriftText = TestData.profileTagLine
    let homeElements = HomeElements()
    
    /*
     * Clicking on the follow button
     * Verify the account is following or not
     * Verify Header text for selected Account
     */
    
    func click_On_FollowButton() -> FollowFuntionality {
        
        followElements.followButton.tap()
        if (followElements.popUpButton.exists) {
            followElements.popUpButton.tap()
        }
        followElements.tableCell.tap()
        
        
        XCTAssert(followElements
                    .followingButton
                    .waitForExistence(timeout: 3)
                  , "WHO page not following")
        
        
        XCTAssertTrue(followElements
                        .headerTag
                        .label
                        .contains(TestData.profileTagLine))
        
        
        homeElements.searchIcon.tap()
        return self
    }
    
    
}
