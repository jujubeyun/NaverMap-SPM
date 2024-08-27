// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NaverMap-SPM",
    products: [
        .library(
            name: "NaverMap-SPM",
            targets: ["NaverMap-SPM"]),
    ],
    targets: [
        .binaryTarget(
            name: "NMapsMap",
            path: "./Frameworks/NMapsMap.xcframework"
        ),
        .binaryTarget(
            name: "NMapsGeometry",
            path: "./Frameworks/NMapsGeometry.xcframework"
        ),
        .target(
            name: "NaverMap-SPM",
            dependencies: ["NMapsMap", "NMapsGeometry"]
        )
    ]
)
