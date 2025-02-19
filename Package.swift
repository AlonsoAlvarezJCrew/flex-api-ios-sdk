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
            targets: ["CyberSourceFlexSDKSwift", "CyberSourceFlexSDKObjC"]),
    ],
    targets: [
        .target(
            name: "CyberSourceFlexSDKSwift",
            dependencies: [],
            path: "flex-api-ios-sdk",
            exclude: [],
            sources: ["Swift"],  // Specify source directories
            resources: [
                .process("Resources")  // Process all resources
            ]
        ),
        .target(
            name: "CyberSourceFlexSDKObjC",
            dependencies: [],
            path: "flex-api-ios-sdk",
            exclude: [],
            sources: ["ObjC"],  // Specify source directories
            resources: [
                .process("Resources")  // Process all resources
            ],
            publicHeadersPath: "ObjC/include",
            cSettings: [
                .headerSearchPath("ObjC"),
            ],
            swiftSettings: [
                .define("SPM_BUILD")
            ]
        ),
    ]
)
