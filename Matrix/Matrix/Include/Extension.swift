import Foundation

extension MatrixCalculator {

    public func print(matrix: [[Double]]) {
        
        __printMatrix(matrix)
    }
    
    public func sum(matrixOne: [[Double]], toMatrix matrixTwo: [[Double]]) {
        
        __printMatrix(__sumMatrix(matrixOne, toMatrix: matrixTwo))
    }
    
}
