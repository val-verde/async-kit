// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "async-kit",
    platforms: [
       .macOS(.v10_15)
    ],
    products: [
        .library(name: "AsyncKit", targets: ["AsyncKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/val-verde/swift-nio.git", .branch("val-verde-mainline")),
        .package(url: "https://github.com/val-verde/swift-log.git", .branch("val-verde-mainline")),
    ],
    targets: [
        .target(name: "AsyncKit", dependencies: [
            .product(name: "Logging", package: "swift-log"),
            .product(name: "NIO", package: "swift-nio"),
        ]),
        .testTarget(name: "AsyncKitTests", dependencies: [
            .target(name: "AsyncKit")
        ]),
    ]
)
