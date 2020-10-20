//
//  AppstoreElements.swift
//  TwitterAppAutomationUITests
//
//  Created by Jinal Shah on 10/8/20.
//  Copyright © 2020 Jinal Shah. All rights reserved.
//
/*
 *Initializing UIElements For Appstore.
 */


import XCTest

final class AppstoreElements {
    
    let searchIcon: XCUIElement
    let searchBarTextField: XCUIElement
    let searchButtonOnKeyboard : XCUIElement
    let findAppInAppStore : XCUIElement
    let openButton : XCUIElement
    let getButton: XCUIElement
    let reDownloadButton : XCUIElement
    let updateButton : XCUIElement
    let installButton : XCUIElement
    let searchIconInNavBar: XCUIElement
    
    
    
    let searchIconId = AccessibilityIdentifier.AppStore.searchAppInNavigationBar
    let searchTextFieldId = AccessibilityIdentifier.AppStore.searchTextField
    let SearchButton_KB = AccessibilityIdentifier.AppStore.searchButton
    let searchNavigationBarTag = AccessibilityIdentifier.AppStore.searchAppInNavigationBar
    let findTwitterInAppStore = AccessibilityIdentifier.AppStore.twitterAppInAppStore
    let twitterOpen = AccessibilityIdentifier.AppStore.open
    let twitterGet = AccessibilityIdentifier.AppStore.get
    let twitterReDownload = AccessibilityIdentifier.AppStore.reDownload
    let twitterInstall = AccessibilityIdentifier.AppStore.install
    let updateButtonID = AccessibilityIdentifier.AppStore.update
    
    
    
    required init() {
        
        searchIcon = appStore.tabBars.buttons[searchIconId]
        searchBarTextField = appStore.navigationBars[searchNavigationBarTag].searchFields[searchTextFieldId]
        searchButtonOnKeyboard = appStore.buttons[SearchButton_KB]
        findAppInAppStore = appStore.collectionViews.cells[findTwitterInAppStore]
        openButton = findAppInAppStore.buttons[twitterOpen]
        getButton = findAppInAppStore.buttons[twitterGet]
        installButton = findAppInAppStore.buttons[twitterInstall]
        reDownloadButton = findAppInAppStore.buttons[twitterReDownload]
        updateButton = findAppInAppStore.buttons[updateButtonID]
        searchIconInNavBar = appStore.navigationBars[searchIconId]
        
    }
    
}
