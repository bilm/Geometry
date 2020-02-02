// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Geometry",
	platforms: [ .macOS(.v10_15), .iOS(.v10)],
    products: [
        .library(name: "Geometry", targets: ["Geometry"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(name: "Geometry", dependencies: []),
        .testTarget(name: "GeometryTests", dependencies: ["Geometry"]),
    ]
)
