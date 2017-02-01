//
//  Algorithms_SwiftTests.swift
//  Algorithms.SwiftTests
//
//  Created by Manson Jones on 1/31/17.
//  Copyright © 2017 Manson. All rights reserved.
//

import XCTest
@testable import Algorithms_Swift

class Algorithms_SwiftTests: XCTestCase {

    let uf = WeightedQuickUnionUF(N: 10)

    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class
        uf.union(1, q: 2)
        uf.union(2, q: 3)

    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        uf.union(1, q: 2)
        uf.union(2, q: 3)
        print(" ********* Test Results ************** ")
        XCTAssertTrue(uf.connected(1, q: 3))
        XCTAssertTrue(!uf.connected(1, q: 4))
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
