//
//  TestData.swift
//  TwitterAppAutomationUITests
//
//  Created by Jinal Shah on 10/8/20.
//  Copyright © 2020 Jinal Shah. All rights reserved.
//
/*
 Collection Of Test Data As Per Diffrent Test Scenario
 */

import Foundation

public enum TestData {

    static let profileTagLine = "We are the #UnitedNations’ health agency. We are committed to achieving better health for everyone, everywhere - #HealthForAll"
    
    
    enum Authntication {
        enum Login {
            static let loginID = "poji2516@gmail.com"
            static let passwordID = "************"
        }
    }
    
    
    enum Search {
        static let searchText = "WHO"
        static let searchTweet = "#autumnfall"
    }
    
    
    enum Tweet {
        static let tweetText = "Hello October! #October #autumnfall #Halloween "
        static let postedTweetText = "Podi. Hello October!  hash tag October  hash tag autumnfall  hash tag Halloween. Image."
        static let matchingHashtag = "#Halloween"
    }
    
}
