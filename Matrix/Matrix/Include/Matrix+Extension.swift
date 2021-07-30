//
//  Matrix+Extension.swift
//  Matrix
//
//  Created by Jéssica Araujo on 29/07/21.
//

import Foundation

extension MatrixCalculator {
    
    public func sum(_ matrixOne: [[Double]], toMatrix matrixTwo: [[Double]]) {
        
        __sumMatrix(matrixOne, toMatrix: matrixTwo)
        
    }
    
    public func print(matrix: [[Double]]) {
        
        __printMatrix(matrix)
    }
}
