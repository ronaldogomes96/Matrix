#if SWIFT_PACKAGE

@_exported import Matrix

extension MatrixCalculator {

    public fnc print(matrix: [[Double]]) {
        
        __printMatrix(matrix)
    }
}

#endif
