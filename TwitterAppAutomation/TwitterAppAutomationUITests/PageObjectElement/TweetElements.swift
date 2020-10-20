//
//  TweetElements.swift
//  TwitterAppAutomationUITests
//
//  Created by Jinal Shah on 10/16/20.
//  Copyright © 2020 Jinal Shah. All rights reserved.
//
/*
 *Initializing UIElements For Posting A New Tweet.
 */


import XCTest

final class TweetElements {
    
    let composeButton : XCUIElement
    let photoLibraryButton : XCUIElement
    let photoSelectionCell : XCUIElement
    let addButton : XCUIElement
    let tweetButton : XCUIElement
    let closeBUtton : XCUIElement
    let suggestionTable : XCUIElement
    
    
    
    let composeButtonID = AccessibilityIdentifier.PostTweet.tweetNewButton
    let photoLibraryButtonID = AccessibilityIdentifier.PostTweet.galleryButton
    let photoSelectionCellID = AccessibilityIdentifier.PostTweet.galleryCell
    let navBarPostTweetID = AccessibilityIdentifier.PostTweet.navigationbarTweetButton
    let addButtonID = AccessibilityIdentifier.PostTweet.addButton
    let tweetButtonID = AccessibilityIdentifier.PostTweet.tweetPostButton
    let closeBUttonID = AccessibilityIdentifier.PostTweet.closeTweetButton
    let suggestionTableID = AccessibilityIdentifier.PostTweet.suggestionTable
    
    
    
    required init() {
        
        composeButton = twitterApp.buttons[composeButtonID]
        photoLibraryButton = twitterApp.buttons[photoLibraryButtonID]
        photoSelectionCell = twitterApp.collectionViews.otherElements[photoSelectionCellID]
        addButton = twitterApp.navigationBars[navBarPostTweetID].buttons[addButtonID]
        tweetButton = twitterApp.navigationBars[navBarPostTweetID].buttons[tweetButtonID]
        closeBUtton = twitterApp.buttons[closeBUttonID]
        suggestionTable = twitterApp.tables[suggestionTableID].children(matching: .cell).element(boundBy: 0).staticTexts[TestData.Tweet.matchingHashtag]
        
    }
    
}
