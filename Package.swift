// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Hodler",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "Hodler",
            targets: ["Hodler"]),
    ],
    dependencies: [
        .package(url: "https://github.com/curdicu/BitcoinCore.git", .branch("main")),
        .package(url: "https://github.com/curdicu/HsCryptoKit.git", .branch("main")),
    ],
    targets: [
        .target(
            name: "Hodler",
            dependencies: [
                .product(name: "BitcoinCore", package: "BitcoinCore"),
                .product(name: "HsCryptoKit", package: "HsCryptoKit"),
            ]
        ),
    ]
)
