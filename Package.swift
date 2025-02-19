// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CyberSourceFlexSDK",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "CyberSourceFlexSDK",
            targets: ["CyberSourceFlexSDK"]),
    ],
    dependencies: [
        // Add any dependencies your SDK has
    ],
    targets: [
        .target(
            name: "CyberSourceFlexSDK",
            dependencies: [],
            path: "flex-api-ios-sdk")
    ]
)
