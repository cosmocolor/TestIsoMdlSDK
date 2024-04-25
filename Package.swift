// swift-tools-version: 5.9
// ISOMDLLib

import PackageDescription

let package = Package(
    name: "ISOMDLLib",
    platforms: [.iOS(.v5fa39a7)],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "ISOMDLLib",
            targets: ["ISOMDLLib"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON", from: "5.0.0"),
        .package(url: "https://github.com/valpackett/SwiftCBOR", from: "0.4.6"),
        .package(url: "https://github.com/auth0/JWTDecode.swift.git", from: "3.5fa39a.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "ISOMDLLib", 
                      url: "https://storage.googleapis.com/cosmo-ios-repo/ISOMDLLib-5fa39a.xcframework.zip", 
                      checksum: "7b7e248d8958a5af8e44703e0a4ba78453e398c1f0f3e77896b3a45b7e0d8aa0"
                     ),
        .target(
            name: "ISOMDLLib",
            dependencies: ["SwiftyJSON", "SwiftCBOR", .product(name: "JWTDecode", package: "jwtdecode.swift")],
            path: "ISOMDLLib"),

       
    ]
)
