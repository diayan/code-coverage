//
//  CoveredClass.swift
//  CodeCoverage
//
//  Created by diayan siat on 02/03/2022.
//

import Foundation

class CoveredClass {
    
    //MARK: Cover an if else statement 
    static func max(_ x: Int, _ y: Int) -> Int {
        if x < y {
            return y
        }else {
            return x
        }
    }
    
    
    //MARK: Cover a loop
    //Never a loop with one test. This misses an important boundary condition. What if the loop is never entered?
    //It is important to see what happens if the statements inside are skipped
    static func commaSeparated(from: Int, to: Int) -> String {
        var result = ""
        
        for i in from..<to {
            result += "\(i),"
        }
        result += "\(to)"
        return result
    }
    
}
