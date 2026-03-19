// swift-tools-version: 6.1

import PackageDescription

let package = Package(
    name: "swift-ds-algorithms",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "swift-ds-algorithms",
            targets: ["swift-ds-algorithms"]
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "swift-ds-algorithms"
        ),
        .testTarget(
            name: "swift-ds-algorithms-tests",
            dependencies: ["swift-ds-algorithms"]
        ),
    ]
)
