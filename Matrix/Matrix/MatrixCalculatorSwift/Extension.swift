#if SWIFT_PACKAGE

@_exported import Matrix

extension MatrixCalculator {

    public func print(matrix: [[Double]]) {
        
        __printMatrix(matrix)
    }
    
    public func mean(m: [[Double]]) {
        __meanMatrix(m, axis: x)
    }
}

#endif
