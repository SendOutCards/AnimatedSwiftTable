// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "AnimatedSwiftTable",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(name: "AnimatedSwiftTable", targets: ["AnimatedSwiftTable"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SendOutCards/SwiftTable.git", revision: "6434d71fa3b4ac61ab6de74085d0168c089a92fd"),
        .package(url: "https://github.com/osteslag/Changeset.git", .upToNextMajor(from: "3.2.0")),
    ],
    targets: [
        .target(name: "AnimatedSwiftTable", dependencies: ["SwiftTable", "Changeset"]),
    ]
)
