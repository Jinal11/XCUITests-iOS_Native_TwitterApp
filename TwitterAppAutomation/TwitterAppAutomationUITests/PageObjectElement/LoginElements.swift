//
//  LoginElements.swift
//  TwitterAppAutomationUITests
//
//  Created by Jinal Shah on 10/14/20.
//  Copyright © 2020 Jinal Shah. All rights reserved.
//
/*
 *Initializing UIElements For Loginscreen.
 */


import XCTest

final class LoginElements {
    
    let twitterLoginLink : XCUIElement
    let emailField : XCUIElement
    let nextButton :XCUIElement
    let passwordField : XCUIElement
    let loginButton: XCUIElement
    
    
    
    let twitterLoginLinkID = AccessibilityIdentifier.LoginTwitterApp.loginTwitter
    let emailFieldID = AccessibilityIdentifier.LoginTwitterApp.loginTextField
    let nextButtonID = AccessibilityIdentifier.LoginTwitterApp.nextButton
    let passwordFieldID = AccessibilityIdentifier.LoginTwitterApp.passwordField
    let loginButtonID = AccessibilityIdentifier.LoginTwitterApp.loginButton
    
    
    
    required init() {
        
        twitterLoginLink = twitterApp.otherElements[twitterLoginLinkID]
        emailField = twitterApp.collectionViews.textFields[emailFieldID]
        nextButton = twitterApp.buttons[nextButtonID]
        passwordField = twitterApp.collectionViews.secureTextFields[passwordFieldID]
        loginButton = twitterApp.toolbars.buttons[loginButtonID]
        
    }
    
}

