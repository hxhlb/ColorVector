// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "ColorVector",
    platforms: [
        .iOS(.v15),
        .macOS(.v12),
        .macCatalyst(.v15),
        .tvOS(.v15),
        .visionOS(.v1),
    ],
    products: [
        .library(name: "ColorVector", targets: ["ColorVector"]),
    ],
    targets: [
        .target(name: "ColorVector"),
        .testTarget(name: "ColorVectorTests", dependencies: ["ColorVector"]),
    ],
)
