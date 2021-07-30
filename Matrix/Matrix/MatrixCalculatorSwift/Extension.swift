#if SWIFT_PACKAGE

@_exported import Matrix

extension MatrixCalculator {

    public func print(matrix: [[Double]]) {
        
        __printMatrix(matrix)
    }
}

#endif
