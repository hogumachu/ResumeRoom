// swift-tools-version: 6.0

import PackageDescription

typealias Dependency = PackageDescription.Package.Dependency
typealias TargetDependency = PackageDescription.Target.Dependency

let package = Package(
  name: "Feature",
  platforms: [
    .iOS(.v18),
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
    .package(path: "../Shared"),
    .package(url: "https://github.com/airbnb/HorizonCalendar", from: "2.0.0"),
  ],
  targets: [
    .target(
      name: "Calendar",
      dependencies: [
        .product(name: "PresentationKit", package: "Shared"),
        "HorizonCalendar",
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
