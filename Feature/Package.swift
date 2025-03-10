// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

typealias Dependency = PackageDescription.Package.Dependency
typealias TargetDependency = PackageDescription.Target.Dependency

#if os(macOS)
let dependency: [Dependency] = [
  .package(path: "../Shared"),
]
let calendarDependency: [TargetDependency] = [
  .product(name: "PresentationKit", package: "Shared"),
]
#else
let dependency: [Dependency] = [
  .package(path: "../Shared"),
  .package(url: "https://github.com/airbnb/HorizonCalendar", from: "2.0.0")
]
let calendarDependency: [TargetDependency] = [
  .product(name: "PresentationKit", package: "Shared"),
  "HorizonCalendar"
]
#endif

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
  dependencies: dependency,
  targets: [
    .target(
      name: "Calendar",
      dependencies: calendarDependency
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
