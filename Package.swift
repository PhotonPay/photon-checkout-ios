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
            url: "https://cdn1.dev.photontech.cc/checkout-sdk/ios/v1.0.1/PhotonCheckout.xcframework.zip",
            checksum: "b4ca1c66e171d311aa8bb3eecece5d49a08182142373397d6e5d59862de83187"
        ),
    ]
)
