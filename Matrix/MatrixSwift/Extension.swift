

//@_exported import Matrix

extension MatrixCalculator {
    
    public func print(matrix: [[Double]]) {
        __printMatrix(matrix)
    }
    
    public func mean(matrix: [[Double]]) {
       var result =  __meanMatrix(matrix, axis: x)
        print(result)
    }
}

