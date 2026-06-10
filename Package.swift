// swift-tools-version: 6.1

import Foundation
import PackageDescription

let skipPlugins = ProcessInfo.processInfo.environment["SKIP_PLUGINS"] != nil

let package = Package(
    name: "swift-ds-algorithms",
    platforms: [
        .macOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "swift-ds-algorithms",
            targets: ["swift-ds-algorithms"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/SimplyDanny/SwiftLintPlugins", from: "0.62.3")
    ],
    targets: [
        .target(
            name: "swift-ds-algorithms",
            plugins: skipPlugins ? [] : [
                .plugin(name: "SwiftLintBuildToolPlugin", package: "SwiftLintPlugins")
            ],
        ),
        .testTarget(
            name: "swift-ds-algorithms-tests",
            dependencies: ["swift-ds-algorithms"],
            plugins: skipPlugins ? [] : [
                .plugin(name: "SwiftLintBuildToolPlugin", package: "SwiftLintPlugins")
            ],
        )
    ]
)
