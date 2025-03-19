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
      name: "Database",
      targets: ["Database"]
    ),
    .library(
      name: "DesignSystem",
      targets: ["DesignSystem"]
    ),
    .library(
      name: "PresentationKit",
      targets: ["PresentationKit"]
    ),
    .library(
      name: "UtilKit",
      targets: ["UtilKit"]
    ),
  ],
  dependencies: [
    .package(url: "https://github.com/pointfreeco/swift-dependencies", from: "1.4.0"),
    .package(url: "https://github.com/pointfreeco/swift-composable-architecture", from: "1.18.0"),
    .package(url: "https://github.com/johnpatrickmorgan/TCACoordinators", from: "0.11.0"),
    
  ],
  targets: [
    .target(
      name: "Database",
      dependencies: [
        .product(name: "Dependencies", package: "swift-dependencies"),
        .product(name: "DependenciesMacros", package: "swift-dependencies"),
      ]
    ),
    .target(
      name: "DesignSystem",
      resources: [
        .process("Resources")
      ]
    ),
    .target(
      name: "PresentationKit",
      dependencies: [
        .product(name: "ComposableArchitecture", package: "swift-composable-architecture"),
        "Database",
        "DesignSystem",
        "TCACoordinators",
        "UtilKit"
      ]
    ),
    .target(
      name: "UtilKit"
    ),
  ]
)
