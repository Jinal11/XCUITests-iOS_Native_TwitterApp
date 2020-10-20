//
//  LoginTwitter.swift
//  TwitterAppAutomationUITests
//
//  Created by Jinal Shah on 10/14/20.
//  Copyright © 2020 Jinal Shah. All rights reserved.
//

import XCTest

final class LoginTwitter : XCTestCase {
    
    let loginElements = LoginElements()
    
    /*
    * Verification for the twiter home page
    * Go to login Screen
    */
    func goto_LoginScreen_From_Mainpage() -> LoginTwitter {
        
        XCTAssertTrue(loginElements
                        .twitterLoginLink
                        .waitForExistence(timeout: 3000))
        
        loginElements.twitterLoginLink.tap()
        return self
        
    }
    
    // Enter Login I'd and Password
    func enter_Twitter_Credentials(_ loginID:String, _ passwordID : String) -> LoginTwitter {
        
        loginElements.emailField.tap()
        loginElements.emailField.typeText(loginID)
        loginElements.nextButton.tap()
        loginElements.passwordField.tap()
        loginElements.passwordField.typeText(passwordID)
        return self
    }
    
    // Verification for login Button before clicking on it
    func click_On_LoginButton() -> LoginTwitter {
        
        XCTAssert(loginElements
                    .loginButton
                    .waitForExistence(timeout: 3000)
                    && loginElements
                    .loginButton
                    .isEnabled, "Button Not Enabled")
        
        twitterApp.toolbars.buttons["Log in"].tap()
        return self
    }
    
}
