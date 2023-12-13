// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Iso18013mdl-SDK",
    platforms: [
        .iOS(.v16)
        ],
    
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Iso18013mdl-SDK",
            targets: ["Iso18013mdl-SDK"]),
    ],
    
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "Iso18013mdl-SDK", url: "https://storage.googleapis.com/cosmo-ios-repo/Iso18013Sdk.xcframework.zip", checksum: "5f1806851aba2ca19cf1cf15a2342c8bd719f8b46d87c0559cfec0ff0006a60b"),
       
    ]
)
