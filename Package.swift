// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "BasicToast",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "BasicToast",
                 targets: ["BasicToast"])
    ],
    targets: [
        .target(name: "BasicToast",
                path: "BasicToast/Classes")
    ],
    swiftLanguageVersions: [
        .v5
    ]
)
