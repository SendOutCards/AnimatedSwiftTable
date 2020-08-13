// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "AnimatedSwiftTable",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(name: "AnimatedSwiftTable", targets: ["AnimatedSwiftTable"]),
    ],
    dependencies: [
        .package(url: "https://github.com/paulofaria/SwiftTable.git", .upToNextMajor(from: "6.0.0")),
        .package(url: "https://github.com/osteslag/Changeset.git", .upToNextMajor(from: "3.2.0")),
    ],
    targets: [
        .target(name: "AnimatedSwiftTable", dependencies: ["SwiftTable", "Changeset"]),
    ]
)
