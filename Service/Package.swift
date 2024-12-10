// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Service",
  defaultLocalization: "en",
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
      name: "PDFService",
      targets: ["PDFService"]
    ),
    .library(
      name: "Storage",
      targets: ["Storage"]
    ),
  ],
  dependencies: [
    .package(name: "DesignSystem", path: "Platform")
  ],
  targets: [
    .target(
      name: "Entity",
      resources: [
        .process("Resources")
      ]
    ),
    .target(
      name: "PDFService",
      dependencies: [
        "DesignSystem",
        "Entity"
      ]
    ),
    .target(
      name: "Storage",
      dependencies: [
        "Entity"
      ]
    ),
  ]
)
