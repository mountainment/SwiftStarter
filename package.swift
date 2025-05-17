// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "CalorieTracker",
    products: [
        .executable(name: "CalorieTracker", targets: ["CalorieTracker"])
    ],
    dependencies: [
        // Add these if using Swift on Windows with package manager
        .package(url: "https://github.com/apple/swift-argument-parser", from: "1.2.0"),
        .package(url: "https://github.com/swiftcsv/SwiftCSV", from: "2.4.0")
    ],
    targets: [
        .executableTarget(
            name: "CalorieTracker",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
                "SwiftCSV"
            ],
            path: "Sources/CalorieTracker"
        ),
        .testTarget(
            name: "CalorieTrackerTests",
            dependencies: ["CalorieTracker"]
        )
    ]
)