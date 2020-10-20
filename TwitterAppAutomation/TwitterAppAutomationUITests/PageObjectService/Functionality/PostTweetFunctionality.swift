//
//  PostTweetFunctionality.swift
//  TwitterAppAutomationUITests
//
//  Created by Jinal Shah on 10/16/20.
//  Copyright © 2020 Jinal Shah. All rights reserved.
//

import XCTest

final class PostTweetFunctionality : TestBase {
    
    let tweetElements = TweetElements()
    let homeElements = HomeElements()
    
    /*
     * Go back to main Screen
     * Posting a tweet which includes Text, Hashtag and Image
     */
    func postNewTweet(_ text:String ) -> PostTweetFunctionality {
        
        homeElements.homeIcon.tap()
        tweetElements.composeButton.tap()
        twitterApp.typeText(text)
        tweetElements.suggestionTable.tap()
        tweetElements.photoLibraryButton.tap()
        tweetElements.photoSelectionCell.tap()
        tweetElements.addButton.tap()
        tweetElements.tweetButton.tap()
        sleep(5)
        homeElements.homeIcon.tap()
        return self
        
    }
    
    //Reftesh data before verify the posted tweet
    func pull_to_refresh_App(_ text : String)  {
        
        let firstCell = twitterApp.cells.containing(NSPredicate(format: "label CONTAINS %@", text)).element
        let start = firstCell.coordinate(withNormalizedOffset: CGVector(dx: 0, dy: 0))
        let finish = firstCell.coordinate(withNormalizedOffset: CGVector(dx: 0, dy: 16))
        start.press(forDuration: 0, thenDragTo: finish)
    }
    
    // Verify the posted tweet and Image
    func verify_Tweet_And_Image(_ text : String) -> PostTweetFunctionality {
        
        let newPost = twitterApp.cells.containing(NSPredicate(format: "label CONTAINS %@", text)).element
        newPost.tap()
        
        
        XCTAssertTrue(newPost
                        .waitForExistence(timeout: 20)
                      , "Verified Posted tweet and Image Successfully")
        
        
        tweetElements.closeBUtton.tap()
        return self
    }
    
    
}
