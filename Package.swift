// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Matrix",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "Matrix",
            targets: ["Matrix"]
        )
    ],
    targets: [
        .target(
            name: "Matrix",
            path: "Matrix/Matrix",
            publicHeadersPath: "Include"),
        .target(
            name: "MatrixSwift",
            dependencies: ["Matrix"],
            path: "Matrix/MatrixSwift"
        )
    ]
)
