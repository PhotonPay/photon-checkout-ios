// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "PhotonCheckout",
    platforms: [.iOS(.v14)],
    products: [
        .library(name: "PhotonCheckout", targets: ["PhotonCheckout", "PhotonCheckoutDeps"]),
    ],
    dependencies: [
        .package(url: "https://github.com/trustdecision/trustdevice-pro-ios.git", exact: "5.3.1-4"),
        .package(url: "https://github.com/fingerprintjs/fingerprintjs-ios.git", from: "1.7.0"),
        .package(url: "https://bitbucket.org/forter-mobile/forter-ios-sdk.git", .upToNextMajor(from: "3.2.2")),
    ],
    targets: [
        .target(
            name: "PhotonCheckoutDeps",
            dependencies: [
                .product(name: "TrustDecisionPro", package: "trustdevice-pro-ios"),
                .product(name: "FingerprintJS", package: "fingerprintjs-ios"),
                .product(name: "ForterSDK", package: "forter-ios-sdk"),
            ],
            path: "Sources/Stub"
        ),
        .binaryTarget(
            name: "PhotonCheckout",
            url: "https://cdn1.dev.photontech.cc/checkout-sdk/ios/v1.0.0/PhotonCheckout.xcframework.zip",
            checksum: "d2c131c6616e1e544d9b1d7b3e2a258c24550e9525521a999cdd5c474a1a7696"
        ),
    ]
)
