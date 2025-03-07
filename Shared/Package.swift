// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Shared",
  platforms: [
    .iOS(.v18),
    .macOS(.v15)
  ],
  products: [
    .library(
      name: "PresentationKit",
      targets: ["PresentationKit"]),
  ],
  dependencies: [
    .package(url: "https://github.com/pointfreeco/swift-composable-architecture", from: "1.12.0"),
    .package(url: "https://github.com/johnpatrickmorgan/TCACoordinators", from: "0.11.0"),
    
  ],
  targets: [
    .target(
      name: "PresentationKit",
      dependencies: [
        .product(name: "ComposableArchitecture", package: "swift-composable-architecture"),
        "TCACoordinators"
      ]
    ),
  ]
)
