// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Connectivity",
    platforms: [.iOS(.v10)],
    products: [.library(name: "Connectivity",
                        targets: ["Connectivity"])],
    targets: [
        .target(
            name: "Reachability",
            dependencies: [],
            path: "Sources/Reachability",
            publicHeadersPath: "./",
            cSettings: [
                .headerSearchPath("../../")
            ]
        ),
        .target(
            name: "Connectivity",
            dependencies: [
                "Reachability"
            ],
            exclude: [
                "../../README.md"
            ]
        ),
        .testTarget(
            name: "ConnectivityTests",
            dependencies: ["Connectivity"]),
    ],
    swiftLanguageVersions: [.v5]
)
