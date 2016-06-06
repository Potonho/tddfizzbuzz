//
//  ViewControllerUnitTests.swift
//  TDDFizzBuzz
//
//  Created by Renato Ribeiro on 6/6/16.
//  Copyright © 2016 Renato. All rights reserved.
//

import XCTest
@testable import TDDFizzBuzz

class ViewControllerUnitTests: XCTestCase {
    
    var viewController: ViewController!

    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        viewController = storyboard.instantiateViewControllerWithIdentifier("ViewController") as! ViewController
        UIApplication.sharedApplication().keyWindow!.rootViewController = viewController
        
        
        XCTAssertNotNil(viewController.view)
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testHasGame() {
        XCTAssertNotNil(viewController.game)
    }

    func testMove1IncrementScore() {
        viewController.play("1")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 1)
    }
    
    func testMove2IncrementScore() {
        viewController.play("1")
        viewController.play("2")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 2)
    }
    
    func testMoveFizzIncrement() {
        viewController.game.score = 2
        viewController.play("Fizz")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 3)
        
    }
    
    func testBuzzScoreIncrement() {
        viewController.game.score = 4
        viewController.play("Buzz")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 5)
    }
    
    func testFizzBuzzIncrement() {
        viewController.game.score = 14
        viewController.play("FizzBuzz")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 15)
    }
    
    func testOnWrongMoveScoreNotIncremented() {
        viewController.play("Fizz")
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 0)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }

}
