//
//  CoveredClassTests.swift
//  CodeCoverageTests
//
//  Created by diayan siat on 02/03/2022.
//

import XCTest
@testable import CodeCoverage

class CoveredClassTests: XCTestCase {
    //MARK: Cover an if else statement
    //Never test a loop with one test. always test the else part
    func test_max_with1And2_shouldReturn2() {
        let result = CoveredClass.max(1, 2)
        XCTAssertEqual(result, 2)
    }
    
    func test_max_with1And2_shouldReturn3() {
        let result = CoveredClass.max(3, 2)
        XCTAssertEqual(result, 3)
    }

    
    //MARK: Cover a loop
    //Never test a loop with one test. This misses an important boundary condition. What if the loop is never entered?
    //It is important to see what happens if the statements inside are skipped
    func test_commaSeparated_from2to4_shouldReturn234CommaSeparated() {
        let result = CoveredClass.commaSeparated(from: 2, to: 4)
        
        XCTAssertEqual(result, "2,3,4")
    }
    
    func test_commaSeparated_from2to2_shouldReturn2WithNoComma() {
        let result = CoveredClass.commaSeparated(from: 2, to: 2)
        
        XCTAssertEqual(result, "2")
    }
    
    
    //MARK: Cover statements in sequence
    func test_area_withWidth7_ShouldBe49() {
        let sut = CoveredClass()
        sut.width = 7
        XCTAssertEqual(sut.area, 49)
    }
}
