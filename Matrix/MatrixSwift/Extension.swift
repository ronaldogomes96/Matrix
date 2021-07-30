@_exported import Matrix

extension MatrixCalculator {
    
    public func print(matrix: [[Double]]) {
        __printMatrix(matrix)
    }
    
    public func mean(matrix: [[Double]]) {
        print(__meanMatrix(matrix, axis: x))
    }
}

