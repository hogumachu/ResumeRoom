// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Platform",
  platforms: [
    .iOS(.v17),
    .macOS(.v14)
  ],
  products: [
    .library(
      name: "DesignKit",
      targets: ["DesignKit"]
    ),
    .library(
      name: "DesignSystem",
      targets: ["DesignSystem"]
    ),
  ],
  targets: [
    .target(
      name: "DesignKit"
    ),
    .target(
      name: "DesignSystem",
      dependencies: [
        "DesignKit"
      ]
    ),
  ]
)
