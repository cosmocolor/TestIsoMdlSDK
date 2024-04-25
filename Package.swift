// swift-tools-version: 5.9
// ISOMDLLib

import PackageDescription

let package = Package(
    name: "ISOMDLLib",
    platforms: [.iOS(.vf64a457)],
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
        .package(url: "https://github.com/auth0/JWTDecode.swift.git", from: "3.f64a45.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "ISOMDLLib", 
                      url: "https://storage.googleapis.com/cosmo-ios-repo/ISOMDLLib-f64a45.xcframework.zip", 
                      checksum: "ebf91015b58ab70927ad04881738b6a1897eb1c8446e9b8f10412d542c77762f"
                     ),
        .target(
            name: "ISOMDLLib",
            dependencies: ["SwiftyJSON", "SwiftCBOR", .product(name: "JWTDecode", package: "jwtdecode.swift")],
            path: "ISOMDLLib"),

       
    ]
)
