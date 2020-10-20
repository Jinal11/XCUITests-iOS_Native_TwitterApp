//
//  TwitterAppAutomationUITests.swift
//  TwitterAppAutomationUITests
//
//  Created by Jinal Shah on 9/25/20.
//  Copyright © 2020 Jinal Shah. All rights reserved.
//

import XCTest

class TwitterAppAutomationUITests: XCTestCase {
    
    let appStore = XCUIApplication(bundleIdentifier: "com.apple.AppStore")
    let twitterApp = XCUIApplication(bundleIdentifier: "com.atebits.Tweetie2")
    let springBoard = XCUIApplication(bundleIdentifier: "com.apple.sprinboard")
    let app = XCUIApplication()
    
    override func setUp() {
        continueAfterFailure = false
    }
    
    override func tearDown() {
        appStore.terminate()
        //twitter uninstall app
        //twitter page unfollow
        //twitter log out
        //delete tweeted post
    }
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    
    
    func testAppStoreApplicationInstall() {
        
        appStore.launch()
        appStore.tabBars["Tab Bar"].buttons["Search"].tap()
        appStore.navigationBars["Search"].searchFields["Games, Apps, Stories, and More"].tap()
        appStore.navigationBars["Search"].typeText("Twitter")
        appStore.buttons["search"].tap()
        sleep(10)
        
        let twitterInAppStore =  appStore.collectionViews.cells["Twitter, Chat about what's happening, zero stars, (null) ratings"]
        
        let twitterOpenApp = twitterInAppStore.buttons["open"]
        
        if (twitterInAppStore.buttons["get"].exists) {
            twitterInAppStore.buttons["get"].tap()
            sleep(10)
            twitterInAppStore.buttons["Install"].tap()
            // Somethings SPRINGBOARD----- springBoard.buttons["Install"].tap()
            sleep(10)
            twitterOpenApp.tap()
        }
        else if (twitterInAppStore.buttons["redownload"].exists){
            twitterInAppStore.buttons["redownload"].tap()
            sleep(10)
            twitterOpenApp.tap()
        }else{
            twitterOpenApp.tap()
        }
    }
    
    
    
    func testApp() {
        
        // In this test, It takes 11-15 minutes to complete to complete. Online reasearch says
        //  - It happens because of animation
        // - it happens because of network activity
        // - It happens because of application using some framework
        
        twitterApp.launch()
        
        twitterApp.otherElements["Have an account already? Log in"].tap()
        let userNameInput = twitterApp.collectionViews.textFields["Phone, email or username"]
        userNameInput.typeText("poji2516@gmail.com")
        twitterApp.buttons["return"].tap()
        let PasswordInput = twitterApp.collectionViews.secureTextFields["Password"]
        PasswordInput.typeText("Abcdefg@1234")
        twitterApp.toolbars.buttons["Log in"].tap()
    }
    
    func basicFlow()  {
        
        twitterApp.launch()
        twitterApp.otherElements["Moments_tab"].tap()
        let searchInput = twitterApp.navigationBars.searchFields["SearchTextField"]
        searchInput.tap()
        searchInput.typeText("Twitter India")
        twitterApp.buttons["Search"].tap()
        twitterApp.collectionViews.buttons["People"].tap()
        if (twitterApp.tables["URT Table"].cells.firstMatch.label=="Loading…") {
            sleep(10)
        }
        
    }
    func testSearchFunctionInApp()  {
        
        basicFlow()
        
        twitterApp.tables["URT Table"].cells.firstMatch.buttons["FollowButton"].tap()
        twitterApp.tables["URT Table"].cells.firstMatch.tap()
        
        let isFollowing = twitterApp.buttons["FollowButton"].firstMatch.label ///Following Twitter India
        
        XCTAssertTrue(twitterApp
                        .staticTexts["ProfileHeaderBio"].label
                        .contains("The official Twitter India account"))
        
        
        XCTAssertEqual("Following Twitter India", isFollowing, "not following Twitter")
        
        //  twitterApp.buttons["FollowButton"].staticTexts["Follow"].tap() // working but too slow
        // twitterApp.navigationBars.buttons["NavigationBackButton"].tap() // working but too slow
        //twitterApp.otherElements["ProfileView"].navigationBars["TFNNavigationBarAXIdentifier"].buttons["Back"].tap()
        // twitterApp.collectionViews.buttons["Tweets & replies"].tap() // working but taking too lon
    }
    
    func testUnfollow()  {
        
        basicFlow()
        XCTAssertTrue(twitterApp
                        .staticTexts["Following"].label
                        .contains("Following"))
        
        // Entering in to main page and unfollow also took same time
        //  twitterApp.tables["URT Table"].cells.firstMatch.tap()
        //  twitterApp.buttons["FollowButton"].staticTexts["Following"].tap()
        //  twitterApp.tables.cells.staticTexts["Unfollow ⁦‪@TwitterIndia‬⁩"].tap()
        
        // without enering the page took 144.55 second
        twitterApp.tables["URT Table"].cells.staticTexts["Following"].tap()
        twitterApp.tables["TFNMenuSheet Table"].cells.firstMatch.tap()
        
        //        XCTAssertTrue(twitterApp
        //            .staticTexts["Follow"].label
        //            .contains("Follow"))      //failed
        
        /* Ask hardik a diffrence of equal
         let isUnfollow = twitterApp.tables["URT Table"].cells.staticTexts["Following"].label
         XCTAssertEqual("Unfollow @TwitterIndia", isUnfollow, " following Twitter")//
         */
    }
    
    
    func testTwitterTweet()  {
        
        
        twitterApp.launch()
        twitterApp.otherElements["Moments_tab"].tap()
        twitterApp.otherElements["Timelines_tab"].tap()
        twitterApp.buttons["Compose Tweet"].tap()
        twitterApp.typeText("Hello October! #October #autumnfall #Halloween ")
        twitterApp/*@START_MENU_TOKEN@*/.buttons["PhotoGalleryButton"]/*[[".windows[\"TwitterAppRootView\"]",".otherElements[\"T1TweetComposeContainerViewController\"]",".otherElements[\"T1TweetComposeViewController\"]",".otherElements[\"ComposeButtonBarView\"]",".buttons[\"Photo library\"]",".buttons[\"PhotoGalleryButton\"]"],[[[-1,5],[-1,4],[-1,3,4],[-1,2,3],[-1,1,2],[-1,0,1]],[[-1,5],[-1,4],[-1,3,4],[-1,2,3],[-1,1,2]],[[-1,5],[-1,4],[-1,3,4],[-1,2,3]],[[-1,5],[-1,4],[-1,3,4]],[[-1,5],[-1,4]]],[0]]@END_MENU_TOKEN@*/.tap()
        twitterApp/*@START_MENU_TOKEN@*/.collectionViews.cells["PhotoGalleryCell1"].otherElements["Landscape. Photo"]/*[[".windows[\"TwitterAppRootView\"]",".otherElements[\"T1PhotoGalleryViewController\"].collectionViews",".cells[\"PhotoGalleryCell1\"].otherElements[\"Landscape. Photo\"]",".otherElements[\"Landscape. Photo\"]",".collectionViews"],[[[-1,4,2],[-1,1,2],[-1,0,1]],[[-1,4,2],[-1,1,2]],[[-1,3],[-1,2]]],[0,1]]@END_MENU_TOKEN@*/.tap()
        twitterApp.navigationBars["TFNNavigationBarAXIdentifier"].buttons["Add"].tap()
        twitterApp/*@START_MENU_TOKEN@*/.navigationBars["TFNNavigationBarAXIdentifier"].buttons["Tweet"]/*[[".windows[\"TwitterAppRootView\"]",".otherElements[\"T1TweetComposeContainerViewController\"].navigationBars[\"TFNNavigationBarAXIdentifier\"]",".buttons[\"Tweet\"]",".buttons[\"ComposeSendTweetButton\"]",".navigationBars[\"TFNNavigationBarAXIdentifier\"]"],[[[-1,4,2],[-1,1,2],[-1,0,1]],[[-1,4,2],[-1,1,2]],[[-1,3],[-1,2]]],[0,1]]@END_MENU_TOKEN@*/.tap()
        sleep(5)
        
        let newPost = twitterApp.cells.containing(NSPredicate(format: "label CONTAINS %@", "Podi. Hello October!  hash tag October  hash tag autumnfall  hash tag Halloween. Image.")).element
        
        XCTAssertTrue(newPost.waitForExistence(timeout: 20))
        
        
        twitterApp.scrollViews.tables.cells.containing(NSPredicate(format: "label CONTAINS %@", "Podi. Hello October!  hash tag October  hash tag autumnfall  hash tag Halloween. Image.")).element.firstMatch.tap()
        
        let elementPresent =  twitterApp.otherElements.containing(NSPredicate(format: "identifier ENDSWITH %@", ".jpg")).element.exists
        print(elementPresent)
        
        twitterApp.buttons["CloseButton"].tap()
        
        
    }
    
    func testHashTag() {
        
        twitterApp.otherElements["Moments_tab"].tap()
        twitterApp.navigationBars.searchFields["SearchTextField"].tap()
        twitterApp.tables["SearchTypeahead Table"].staticTexts["#autumnfall"].tap()
        twitterApp.collectionViews.buttons["Latest"].tap()
        
        let newPost = twitterApp.cells.containing(NSPredicate(format: "label CONTAINS %@", "Podi. Hello October!  hash tag October  hash tag autumnfall  hash tag Halloween. Image.")).element
        
        XCTAssertTrue(newPost.waitForExistence(timeout: 20))
        
        
        //  working but not correct
        //  twitterApp.tables.element(boundBy: 0).firstMatch.tap()
        
        //   twitterApp.scrollViews.tables.containing(NSPredicate(format: "label CONTAINS %@", "Podi. Hello October!  hash tag October  hash tag autumnfall  hash tag Halloween. Image.")).element.tap()
        
        
        
    }
    
    func testPullToRefresh()  {
        
        let firstCell = twitterApp.cells.containing(NSPredicate(format: "label CONTAINS %@", "Podi. Hello October!  hash tag October  hash tag autumnfall  hash tag Halloween. Image.")).element
        let start = firstCell.coordinate(withNormalizedOffset: CGVector(dx: 0, dy: 0))
        let finish = firstCell.coordinate(withNormalizedOffset: CGVector(dx: 0, dy: 16))
        start.press(forDuration: 0, thenDragTo: finish)
        
        
        
        
        
        
    }
}


