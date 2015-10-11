//
//  Long_Pressing_on_UI_ElementsUITests.swift
//  Long Pressing on UI ElementsUITests
//
//  Created by Vandad on 7/7/15.
//  Copyright © 2015 Pixolity. All rights reserved.
//

import Foundation
import XCTest
@testable import Long_Pressing_on_UI_Elements

class Long_Pressing_on_UI_ElementsUITests: XCTestCase {
  
  override func setUp() {
    super.setUp()
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    continueAfterFailure = false
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    XCUIApplication().launch()
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  func testExample() {
    
    let app = XCUIApplication()
    let view = app.windows.childrenMatchingType(.Unknown).elementBoundByIndex(0)
    view.pressForDuration(5)
    
    XCTAssert(app.alerts.count > 0)
    
    let text = "Foo Bar"
    app.typeText(text)
    
    let alert = app.alerts.elementBoundByIndex(0)
    let saveBtn = alert.descendantsMatchingType(.Button).matchingPredicate(
      NSPredicate(format: "title like[c] 'Save'")).elementBoundByIndex(0)
    
    saveBtn.tap()
    
    XCTAssert(view.value as! String == text)
    
  }
  
}
