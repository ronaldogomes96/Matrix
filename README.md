# Matrix

## Quick Start 
1. Get Carthage by running `brew install carthage`
2. Create a Cartfile in the same directory where your `.xcodeproj` is, with: `touch Cartfile`
3. Add the following line in the Cartfile 
  ```
git "git@github.com:ronaldogomes96/Matrix.git" ~> 1.0.0
```
4. As Carthage doesn't work out of the box with Xcode 12 follow the steps in the [Carthage Workaround](https://github.com/Carthage/Carthage/blob/master/Documentation/Xcode12Workaround.md).
5. Drag `Carthage/Build/iOS/Matrix.framework` into your application target’s General > Linked Frameworks and Libraries.
6. Add a New Run Script Phase for the application target’s Build Phases with
  ```
/usr/local/bin/carthage copy-frameworks
```
7. In the same run script, add **Input Files**
```
$(SRCROOT)/Carthage/Build/iOS/Matrix.framework
```
8.  And the **Output Files**
```
$(BUILT_PRODUCTS_DIR)/$(FRAMEWORKS_FOLDER_PATH)/Matrix.framework
```
9. If you are using Carthage for an application, select "Embed & Sign", otherwise "Do Not Embed". 

## Example
```swift
let matrix = MatrixCalculator()
    
// Matrizes de exemplo
let mat1 = [[1, 3]]
    
let mat2 = [[4, 5]]
    
let mat3 = [[10.2, 18.5],
                [11.3, -3.2]]
    
let mat4 = [[1, 0],
                [3, -9]]
                
// Sum
print("\(mat3) + \(mat4)")
print(matrix.sumMatrix(mat3, toMatrix: mat4))
        
// Subtraction
print("\(mat2) - \(mat1)")
print(matrix.subtractionMatrix(mat2, toMatrix: mat1))
        
// Multiplication for scalar
print("\(mat1) x \(3)")
print(matrix.multiplyMatrix(mat1, toScalar: 3))
        
// Mean Calculator
print("\(mat4) mean")
print(matrix.meanMatrix(mat4, axis: total))
print("\(mat4) mean of lines")
print(matrix.meanMatrix(mat4, axis: x))
print("\(mat4) mean of columns")
print(matrix.meanMatrix(mat4, axis: y))
        
// Print
print(matrix.printMatrix(mat3))
```
