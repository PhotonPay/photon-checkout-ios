// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "PhotonCheckout",
    platforms: [.iOS(.v14)],
    products: [
        .library(name: "PhotonCheckout", targets: ["PhotonCheckout", "PhotonCheckoutDeps"]),
    ],
    dependencies: [
        .package(url: "https://github.com/trustdecision/trustdevice-pro-ios.git", exact: "5.3.2"),
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
            url: "https://cdn.photonpay.com/checkout-sdk/ios/v1.0.7/PhotonCheckout.xcframework.zip",
            checksum: "3ea89f0eeaccd93a6838a7eb38f75b7a3e2d3f82e064b307035999dc890a804f"
        ),
    ]
)
