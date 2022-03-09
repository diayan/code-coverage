//
//  CoveredClass.swift
//  CodeCoverage
//
//  Created by diayan siat on 02/03/2022.
//

import Foundation
import UIKit

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
    
    
    //MARK: Cover statements in sequence
    //NOTE: If you can delete production code and the tests still pass then those lines aren't covered in the first place
    //When you test a statement in a sequence of statements, the test touches the entire sequence and you may thing the rest of the statements
    //are covered but they are not. 
    private(set) var area: Int
    
    var width: Int {
        didSet {
            area = width * width
            let color: UIColor = redOrGreen(for: width)
            drawSquare(width: width, color: color)
        }
    }
    
    init(){
        area = 0
        width = 0
    }
    
    private func redOrGreen(for width: Int) -> UIColor {
        width % 2 == 0 ? .red : .green
    }
    
    private func drawSquare(width: Int, color: UIColor) {
        
    }
}
