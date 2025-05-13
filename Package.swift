// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ChencatustomUI",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ChencatustomUI",
            targets: ["ChencatustomUI"]),
    ],
    targets: [
        .target(
            name: "ChencatustomUI",
            dependencies: []),
        .testTarget(
            name: "ChencatustomUITests",
            dependencies: ["ChencatustomUI"]),
    ]
)
