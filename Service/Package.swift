// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Service",
  platforms: [
    .iOS(.v17),
    .macOS(.v14)
  ],
  products: [
    .library(
      name: "Entity",
      targets: ["Entity"]
    ),
    .library(
      name: "Storage",
      targets: ["Storage"]
    ),
  ],
  targets: [
    .target(
      name: "Entity"
    ),
    .target(
      name: "Storage",
      dependencies: [
        "Entity"
      ]
    ),
  ]
)
