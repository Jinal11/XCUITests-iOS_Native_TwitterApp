//
//  InstallTwitter.swift
//  TwitterAppAutomationUITests
//
//  Created by Jinal Shah on 10/13/20.
//  Copyright © 2020 Jinal Shah. All rights reserved.
//

import XCTest

final class InstallTwitter: XCTestCase {
    
    let appstoreElements = AppstoreElements()
    
    /*
     * Searcing Twitter app on appstore
     * Verify the result
     */
    func open_AppStore_ToDownload_TwitterApp() -> InstallTwitter {
        
        appstoreElements.searchIcon.tap()
        appstoreElements.searchBarTextField.tap()
        appstoreElements.searchIconInNavBar.typeText("Twitter")
        appstoreElements.searchButtonOnKeyboard.tap()
        
        
        XCTAssert(appstoreElements
                    .findAppInAppStore
                    .waitForExistence(timeout: 10),
                  "Twitter app is not displayed in app store post search")
        
        
        return self
    }
    
    /*
     * Download and open application from appstore
     * Checking conditions for diffrent button such as get, Install, redownload and update
     */
    func download_Twitter_App_From_Appstore() -> InstallTwitter {
        
        if (appstoreElements.getButton.exists) {
            appstoreElements.getButton.tap()
            sleep(10)
            appstoreElements.installButton.tap()
            sleep(10)
            appstoreElements.openButton.tap()
        }else if(appstoreElements.reDownloadButton.exists){
            appstoreElements.reDownloadButton.tap()
            sleep(10)
            appstoreElements.openButton.tap()
        }else if(appstoreElements.updateButton.exists){
            appstoreElements.updateButton.tap()
            sleep(10)
            appstoreElements.openButton.tap()
        }
        else{
            appstoreElements.openButton.tap()
        }
        return self
    }

}
