// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CombineExpectations",
    platforms: [
        .iOS("8.0"),
        .macOS("10.10"),
        .tvOS("9.0"),
        .watchOS("2.0"),
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "CombineExpectations",
            targets: ["CombineExpectations"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/broadwaylamb/OpenCombine.git", .upToNextMajor(from: "0.7.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "CombineExpectations",
            dependencies: ["OpenCombine"]),
        .testTarget(
            name: "CombineExpectationsTests",
            dependencies: ["CombineExpectations", "OpenCombine", "OpenCombineDispatch"]),
    ]
)
