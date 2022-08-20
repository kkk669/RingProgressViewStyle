// swift-tools-version: 5.6

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription

var products: [Product] = [
    .library(
        name: "RingProgressViewStyle",
        targets: ["RingProgressViewStyle"]
    )
]

#if canImport(AppleProductTypes)
    // For Swift Playgrounds
    import AppleProductTypes

    let platforms: [SupportedPlatform] = [
        .iOS("15.2"),
        .macOS(.v12),
    ]
    products.append(
        .iOSApplication(
            name: "Showcase",
            targets: ["Showcase"],
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .placeholder(icon: .beachball),
            accentColor: .presetColor(.blue),
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ]
        )
    )
#else
    // For normal usage as a library
    let platforms: [SupportedPlatform] = [
        .iOS(.v14),
        .mac(.v11),
    ]
#endif

let package = Package(
    name: "Showcase",
    platforms: platforms,
    products: products,
    targets: [
        .executableTarget(
            name: "Showcase",
            dependencies: [
                "RingProgressViewStyle"
            ]
        ),
        .target(
            name: "RingProgressViewStyle"
        ),
    ]
)