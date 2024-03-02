// swift-tools-version: 5.9

import PackageDescription

let package = Package(
  name: "swift-bug-overload",
  platforms: [
    .iOS(.v13),
    .macOS(.v11),
  ],
  products: [
    .library(
      name: "Library1",
      targets: ["Library1"]
    ),
  ],
  dependencies: [
    .package(url: "https://github.com/apple/swift-http-types", from: "1.0.3"),
  ],
  targets: [
    .target(
      name: "Library1",
      dependencies: [
        .product(name: "HTTPTypes", package: "swift-http-types"),
        .product(name: "HTTPTypesFoundation", package: "swift-http-types"),
      ]
    ),
  ]
)
