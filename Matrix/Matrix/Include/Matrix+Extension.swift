//
//  Matrix+Extension.swift
//  Matrix
//
//  Created by Jéssica Araujo on 29/07/21.
//

import Foundation

extension MatrixCalculator {
    
    public func sum(_ matrixOne: [[Double]], toMatrix matrixTwo: [[Double]]) -> Double {
        
        let result = __sumMatrix(matrixOne, toMatrix: matrixTwo)
        
        return result
        
    }
    
    
    public func print(matrix: [[Double]]) {
        
        __printMatrix(matrix)
    }
}
