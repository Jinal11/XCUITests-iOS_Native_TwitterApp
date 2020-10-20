//
//  TwitterAppTestCases.swift
//  TwitterAppAutomationUITests
//
//  Created by Jinal Shah on 10/13/20.
//  Copyright © 2020 Jinal Shah. All rights reserved.
//
/*
 *TestSuit for Twitter Application
 */
import XCTest

class TwitterAppTestCases: TestBase {
    
    let userName = TestData.Authntication.Login.loginID
    let password = TestData.Authntication.Login.passwordID
    let searchAccount = TestData.Search.searchText
    let tweetText = TestData.Tweet.tweetText
    let verifyText = TestData.Tweet.postedTweetText
    let searchByHashtag = TestData.Search.searchTweet
    
    
    
    func test1_SearchTwitterAppAndDownloadFromAppStore() {
        appStore.launch()
        let _ = InstallTwitter().open_AppStore_ToDownload_TwitterApp()
        let _ = InstallTwitter().download_Twitter_App_From_Appstore()
    }
    
    
    func test2_LoginToRegisteredAccount() {
        let _ = LoginTwitter().goto_LoginScreen_From_Mainpage()
        let _ = LoginTwitter().enter_Twitter_Credentials(userName, password)
        let _ = LoginTwitter().click_On_LoginButton()
    }
    
    
    func test3_SearchPeopleFromTwitterSearch() {
        let _ = SearchFunctionality().search_People(searchAccount)
    }
    
    
    func test4_Click_Follow_Button() {
        let _ = FollowFuntionality().click_On_FollowButton()
    }
    
    
    func test5_Post_New_Tweet() {
        let _ = PostTweetFunctionality().postNewTweet(tweetText)
        let _ = PostTweetFunctionality().pull_to_refresh_App(verifyText)
        let _ = PostTweetFunctionality().verify_Tweet_And_Image(verifyText)
    }
    
    
    func test6_Search_Verify_Posted_Tweer() {
        let _ = PostTweetFunctionality().verify_Tweet_And_Image(verifyText)
    }
}
