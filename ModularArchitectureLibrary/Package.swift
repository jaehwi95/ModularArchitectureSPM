// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ModularArchitectureLibrary",
    platforms: [.iOS(.v17)],
    products: [
        .library(
            name: "DesignSystem",
            targets: ["DesignSystem"]),
        .library(
            name: "LoginFeature",
            targets: ["LoginFeature"]),
        .library(
            name: "Util",
            targets: ["Util"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/airbnb/lottie-spm.git",
            from: "4.5.0")
    ],
    targets: [
        .target(
            name: "DesignSystem", 
            dependencies: [
                .product(name: "Lottie", package: "lottie-spm"),
            ]),
        .testTarget(
            name: "DesignSystemTests",
            dependencies: ["DesignSystem"]),
        .target(
            name: "LoginFeature",
            dependencies: [
                "DesignSystem"
            ]),
        .target(
            name: "Util"
        )
    ]
)
