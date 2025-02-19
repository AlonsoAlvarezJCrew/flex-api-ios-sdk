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
            path: "flex-api-ios-sdk/")
    ]
)

//import PackageDescription
//
//let package = Package(
//    name: "SharedExperiences",
//    defaultLocalization: "en",
//    platforms: [
//        .iOS(.v16)
//    ],
//    products: [
//        .library(name: "GiftCardExperience", targets: ["GiftCardExperience"]),
//    ],
//    dependencies: [
//        // Internal Dependencies
//        .package(path: "../APIs"),
//        .package(path: "../Core"),
//        .package(path: "../Navigation"),
//        .package(path: "../UI"),
//        .package(path: "../../Packages/Services")
//    ],
//    targets: Target.allTargets()
//)
//
//private extension Target {
//    static func allTargets() -> [Target] {
//        [
//            giftCardExperienceTargets()
//        ].flatMap { $0 }
//    }
//
//    static func giftCardExperienceTargets() -> [Target] {
//        [
//            .target(
//                name: "GiftCardExperience",
//                dependencies: [
//                    
//                    .product(name: "BasketApi", package: "APIs"),
//                    .product(name: "GiftCardApi", package: "APIs"),
//                    .product(name: "JCrewUIComponents", package: "UI"),
//                    .product(name: "Logging", package: "Core"),
//                    .product(name: "Services", package: "Services"),
//                    .product(name: "Validation", package: "Core"),
//                    .product(name: "JCrewCore", package: "Core"),
//                    .product(name: "GiftCardRoutes", package: "Navigation"),
//                ],
//                path: "GiftCardExperience/Sources"
//            ),
//            .testTarget(
//                name: "GiftCardExperienceTests",
//                dependencies: [
//                    "GiftCardExperience",
//
//                    .product(name: "AuthenticationApiTesting", package: "APIs"),
//                    .product(name: "BasketApiTesting", package: "APIs"),
//                    .product(name: "GiftCardApiTesting", package: "APIs"),
//                    
//                    .product(name: "Logging", package: "Core"),
//                ],
//                path: "GiftCardExperience/Tests"
//            )
//        ]
//    }
//}
