# Matrix

Matrix is a framework written in Objective C that helps in performing mathematical calculations of multidimensional matrices. It also contains the matrix print functionality, for better visualization. 

Can be used in both Objective C and Swift.

# Installation
## Swift Package Manager

1. In your project click: File -> Swift Packages -> Add Package Dependency...
2. Then, paste https://github.com/ronaldogomes96/Matrix
3. Choice Next
4. Make sure you choose the branch main

# Get started

1 - Import Matrix framework

```swift
import Matrix
```

2 - Create Matrix Calculator object

```swift
let matrix = MatrixCalculator()
```

3 - Use some of the functions given in the documentation

**OBS: It's important to note that all functions take arrays of multiple dimensions.**

Therefore examples like the following generate an error:

```swift
matrix.meanMatrix([1, 2, 3], axis: total)  // One-Dimensional Matrix
```

They should look like this:

```swift
matrix.meanMatrix([[1, 2, 3]], axis: total)   // Multi-Dimensional Matrix
```

# Documentation

## Sum

Performs sum between two matrices.

```swift
let mat1 = [[10.2, 18.5],
               	    [11.3, -3.2]]
    
let mat2 = [[1.6, 0.2],
                    [3.9, -9.0]]
                
let sum = matrix.sumMatrix(mat1, toMatrix: mat2)
```

## Subtraction

Performs subtraction between two matrices.

```swift
let mat1 = [[10.2, 18.5],
               	    [11.3, -3.2]]
    
let mat2 = [[1.6, 0.2],
                    [3.9, -9.0]]

let subtraction = matrix.subtractionMatrix(mat2, toMatrix: mat1)
```

## Multiplication by scalar

Performs matrix multiplication by a scalar number.

```swift
Let number = 7.3
let mat1 = [[10.2, 18.5],
               	    [11.3, -3.2]]
let multiply = matrix.multiplyMatrix(mat1, toScalar: number)
```

## Mean

We have three possibilities for calculating the matrix mean, for the x, y axes and the total matrix mean.

### Axis X

We specify x in the axis parameter 

```swift
let mat1 = [[10.2, 18.5],
               	    [11.3, -3.2]]
let meanX = matrix.meanMatrix(mat1, axis: x)
```

### Axis Y

We specify y in the axis parameter 

```swift
let mat1 = [[10.2, 18.5],
               	    [11.3, -3.2]]
let meanY = matrix.meanMatrix(mat1, axis: y)
```

### Total mean

We specify total in the axis parameter 

```swift
let mat1 = [[10.2, 18.5],
               	    [11.3, -3.2]]
let meanTotal = matrix.meanMatrix(mat1, axis: total)
```

## Print

We have a function that prints the matrix more pleasantly on the terminal with row and column information

```swift
let mat1 = [[10.2, 18.5],
               	    [11.3, -3.2]]
matrix.printMatrix(mat1)
```

# Want to contribute?

If you want to contribute just open an issue informing the improvement or create a pull request.

# Show your support

Give a ⭐️ if this project helped you!

# 📝 License

Copyright © 2021 
[Ronaldo Gomes](https://github.com/ronaldogomes96)
[Jéssica Guiot](https://github.com/jessicaguiot)

Matrix is available under the MIT license. See the LICENSE file for more info.
