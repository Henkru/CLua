// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CLua",
    products: [
        .library(
            name: "CLua",
            type: .static,
            targets: ["CLua"])
    ],
    targets: [
        .target(
            name: "CLua",
            cSettings: [
                .define("LUA_USE_LINUX", to: "1")  // LUA_USE_LINUX is also used for macOS...
            ]
        )
    ]
)
