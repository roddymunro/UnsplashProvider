// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UnsplashProvider",
    platforms: [
        .iOS(.v13),
        .macOS(.v11),
        .watchOS(.v10)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "UnsplashProvider",
            targets: ["UnsplashProvider"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.4.4")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "UnsplashProvider",
            dependencies: ["Alamofire"],
            resources: [
              .process("Resources")
            ]),
        .testTarget(
            name: "UnsplashProviderTests",
            dependencies: ["UnsplashProvider"]),
    ]
)
