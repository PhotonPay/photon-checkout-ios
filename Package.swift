// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "PhotonCheckout",
    platforms: [.iOS(.v14)],
    products: [
        .library(name: "PhotonCheckout", targets: ["PhotonCheckoutWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/trustdecision/trustdevice-pro-ios.git", exact: "5.3.1-4"),
        .package(url: "https://github.com/fingerprintjs/fingerprintjs-ios.git", from: "1.7.0"),
        .package(url: "https://bitbucket.org/forter-mobile/forter-ios-sdk.git", .upToNextMajor(from: "3.2.2")),
    ],
    targets: [
        .target(
            name: "PhotonCheckoutWrapper",
            dependencies: [
                "PhotonCheckout",
                .product(name: "TrustDecisionPro", package: "trustdevice-pro-ios"),
                .product(name: "FingerprintJS", package: "fingerprintjs-ios"),
                .product(name: "ForterSDK", package: "forter-ios-sdk"),
            ],
            path: "Sources/Stub"
        ),
        .binaryTarget(
            name: "PhotonCheckout",
            url: "https://cdn1.dev.photontech.cc/checkout-sdk/ios/v1.0.0/PhotonCheckout.xcframework.zip",
            checksum: "bdb9152d22a68f47948a48707a01ebcdd0bb80ff0742f3039fb6ac71a060bd27"
        ),
    ]
)
