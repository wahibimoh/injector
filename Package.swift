// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "WahibimohInjector",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "WahibimohInjector",
            targets: ["InjectorPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "7.0.0")
    ],
    targets: [
        .target(
            name: "InjectorPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/InjectorPlugin"),
        .testTarget(
            name: "InjectorPluginTests",
            dependencies: ["InjectorPlugin"],
            path: "ios/Tests/InjectorPluginTests")
    ]
)