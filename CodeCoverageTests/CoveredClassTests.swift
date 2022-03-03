//
//  CoveredClassTests.swift
//  CodeCoverageTests
//
//  Created by diayan siat on 02/03/2022.
//

import XCTest
@testable import CodeCoverage

class CoveredClassTests: XCTestCase {
    func test_max_with1And2_shouldReturn2() {
        let result = CoveredClass.max(1, 2)
        XCTAssertEqual(result, 2)
    }
    
    func test_max_with1And2_shouldReturn3() {
        let result = CoveredClass.max(3, 2)
        XCTAssertEqual(result, 3)
    }

    func test_commaSeparated_from2to4_shouldReturn234CommaSeparated() {
        let result = CoveredClass.commaSeparated(from: 2, to: 4)
        
        XCTAssertEqual(result, "2,3,4")
    }
}
