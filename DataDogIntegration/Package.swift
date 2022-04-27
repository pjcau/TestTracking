// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DataDogIntegration",
	platforms: [.iOS(.v14)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "DataDogIntegration",
            targets: ["DataDogIntegration"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
		.package(url: "https://github.com/DataDog/dd-sdk-ios", .upToNextMajor(from: "1.10.0")),
        .package(path: "../ServiceReportingIntegrator")


    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "DataDogIntegration",
            dependencies: [
				.product(name: "Datadog", package: "dd-sdk-ios"),
                .product(name: "ServiceReportingIntegrator", package: "ServiceReportingIntegrator")


			]),
        .testTarget(
            name: "DataDogIntegrationTests",
            dependencies: ["DataDogIntegration"]),
    ]
)
