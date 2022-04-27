// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ServiceReportingIntegrator",
    platforms: [.iOS(.v14)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ServiceReportingIntegrator",
            targets: ["ServiceReportingIntegrator"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(path: "../Networking"),
        .package(path: "../Tracking")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "ServiceReportingIntegrator",
            dependencies: [
                .product(name: "Networking", package: "Networking"),
                .product(name: "Tracking", package: "Tracking")
                ]),
        .testTarget(
            name: "ServiceReportingIntegratorTests",
            dependencies: ["ServiceReportingIntegrator"]),
    ]
)