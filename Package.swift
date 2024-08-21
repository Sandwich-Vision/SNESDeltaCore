// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SNESDeltaCore",
    platforms: [
        .iOS(.v14),
        .visionOS(.v1)
    ],
    products: [
        .library(name: "SNESDeltaCore", targets: ["SNESDeltaCore"]),
    ],
    dependencies: [
        .package(path: "../DeltaCore")
    ],
    targets: [
        .target(
            name: "SNESDeltaCore",
            dependencies: [],
            path: ".",
            exclude: [
            ],
            sources: [
                "SNESDeltaCore/Types",
                "SNESDeltaCore/Bridge",
                "SNESDeltaCore/SNES.swift",
            ],
            publicHeadersPath: "."
        )
    ]
)
