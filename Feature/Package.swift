// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Feature",
  platforms: [
    .iOS(.v18),
    .macOS(.v15)
  ],
  products: [
    .library(
      name: "Calendar",
      targets: ["Calendar"]
    ),
    .library(
      name: "Home",
      targets: ["Home"]
    ),
    .library(
      name: "Setting",
      targets: ["Setting"]
    ),
  ],
  dependencies: [
    .package(path: "../Shared")
  ],
  targets: [
    .target(
      name: "Calendar",
      dependencies: [
        .product(name: "PresentationKit", package: "Shared")
      ]
    ),
    .target(
      name: "Home",
      dependencies: [
        .product(name: "PresentationKit", package: "Shared")
      ]
    ),
    .target(
      name: "Setting",
      dependencies: [
        .product(name: "PresentationKit", package: "Shared")
      ]
    ),
  ]
)
