//
//  AccessibilityIdentifier.swift
//  TwitterAppAutomationUITests
//
//  Created by Jinal Shah on 10/7/20.
//  Copyright © 2020 Jinal Shah. All rights reserved.
//
/*
 Separate All UIElements Identifier For Application.
 */


import Foundation

public enum AccessibilityIdentifier {
    
    enum AppStore {
        
        static let twitterAppInAppStore = "Twitter, Chat about what's happening, zero stars, (null) ratings"
        static let searchAppInNavigationBar = "Search"
        static let searchButton = "search"
        static let searchTextField = "Games, Apps, Stories, and More"
        static let searchBar = "Tab Bar"
        static let open = "open"
        static let get = "get"
        static let install = "Install"
        static let reDownload = "redownload"
        static let update = "update"
    }
    
    enum LoginTwitterApp{
        
        static let loginTwitter = "Have an account already? Log in"
        static let loginTextField = "Phone, email or username"
        static let nextButton = "return"
        static let passwordField = "Password"
        static let loginButton = "Log in"
    }
    enum HomeScreen {
        
        static let  searchButton = "Moments_tab"
        static let homeButton = "Timelines_tab"
    }
    
    enum SearchFunctionality {
        
        static let searchTextField = "SearchTextField"
        static let searchButton = "search"
        static let peopleButton = "People"
        static let resultLoading = "Loading…"
        static let latestButton = "Latest"
        
    }
    
    enum Follow {
        
        static let resultTable = "URT Table"
        static let followButton = "FollowButton"
        static let headerText = "ProfileHeaderBio"
        static let laterButton = "Maybe Later"
        static let popUpView = "Find more like @WHO to follow"
        static let followingButton = "Following World Health Organization (WHO)"
        
    }
    
    enum PostTweet {
        
        static let tweetNewButton = "Compose Tweet"
        static let galleryButton = "PhotoGalleryButton"
        static let galleryCell = "Landscape. Photo"
        static let addButton = "Add"
        static let navigationbarTweetButton = "TFNNavigationBarAXIdentifier"
        static let tweetPostButton = "Tweet"
        static let closeTweetButton = "CloseButton"
        static let suggestionTable = "ComposeTypeahead Table"
        
    }
    
    enum SearchpostedTweet {
        static let searchTab = "Moments_tab"
        static let searchTextField = "SearchTextField"
        
    }
    
    
}
