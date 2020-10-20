//
//  FollowElements.swift
//  TwitterAppAutomationUITests
//
//  Created by Jinal Shah on 10/15/20.
//  Copyright © 2020 Jinal Shah. All rights reserved.
//
/*
 *Initializing UIElements For LoginScreen.
 */


import XCTest

final class FollowElements {
    
    let followButton : XCUIElement
    let tableCell : XCUIElement
    let headerTag : XCUIElement
    let popUpButton : XCUIElement
    let followingButton : XCUIElement
    
    
    
    let followTableID = AccessibilityIdentifier.Follow.resultTable
    let followButtonID = AccessibilityIdentifier.Follow.followButton
    let popUpButtonID = AccessibilityIdentifier.Follow.laterButton
    let headerTagID = AccessibilityIdentifier.Follow.headerText
    let followingButtonID = AccessibilityIdentifier.Follow.followingButton
    
    
    
    required init(){
        
        followButton = twitterApp.tables[followTableID].cells.firstMatch.buttons[followButtonID]
        tableCell = twitterApp.tables[followTableID].cells.firstMatch
        popUpButton = twitterApp.buttons[popUpButtonID]
        headerTag = twitterApp.staticTexts[headerTagID]
        followingButton = twitterApp.buttons[followingButtonID]
        
    }
    
}
