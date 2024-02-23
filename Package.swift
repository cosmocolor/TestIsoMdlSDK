// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Iso18013mdl-SDK",
    platforms: [
        .iOS(.v17)
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
        .binaryTarget(name: "Iso18013mdl-SDK", url: "https://storage.googleapis.com/cosmo-ios-repo/Iso18013Sdk.xcframework.zip", checksum: "9e08725b0b113763dea5d77debee01eac57606a8b55bd5ecae37604cd1a60197"),
       
    ]
)
