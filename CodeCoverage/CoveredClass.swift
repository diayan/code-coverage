//
//  CoveredClass.swift
//  CodeCoverage
//
//  Created by diayan siat on 02/03/2022.
//

import Foundation

class CoveredClass {
    
    static func max(_ x: Int, _ y: Int) -> Int {
        if x < y {
            return y
        }else {
            return x
        }
    }
    
    static func commaSeparated(from: Int, to: Int) -> String {
        var result = ""
        
        for i in from..<to {
            result += "\(i)"
        }
        result += "\(to)"
        return result
    }
}
