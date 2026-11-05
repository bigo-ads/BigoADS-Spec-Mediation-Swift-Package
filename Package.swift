// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "BigoADSSpecMediation",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(name: "BigoADSAdMobAdapter", targets: ["BigoADSAdMobAdapter"]),
        .library(name: "BigoADSIronSourceAdapter", targets: ["BigoADSIronSourceAdapter"]),
        .library(name: "BigoADSMaxAdapter", targets: ["BigoADSMaxAdapter"]),
        .library(name: "BigoADSNewMaxAdapter", targets: ["BigoADSNewMaxAdapter"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/bigo-ads/BigoADS-Spec-Swift-Package.git",
            exact: "6.2.0"
        ),
    ],
    targets: [
        .target(
            name: "BigoADSAdMobAdapter",
            dependencies: [
                "bigo_ads_admob_adapter",
                .product(name: "BigoADS", package: "bigoads-spec-swift-package"),
            ]
        ),
        .target(
            name: "BigoADSIronSourceAdapter",
            dependencies: [
                "bigo_ads_ironsource_adapter",
                .product(name: "BigoADS", package: "bigoads-spec-swift-package"),
            ]
        ),
        .target(
            name: "BigoADSMaxAdapter",
            dependencies: [
                "bigo_ads_max_adapter",
                .product(name: "BigoADS", package: "bigoads-spec-swift-package"),
            ]
        ),
        .target(
            name: "BigoADSNewMaxAdapter",
            dependencies: [
                "bigo_ads_new_max_adapter",
                .product(name: "BigoADS", package: "bigoads-spec-swift-package"),
            ]
        ),
        .binaryTarget(
            name: "bigo_ads_admob_adapter",
            url: "https://static-fed-oss.adsbigo.com/bigoads-framework/bigo_ads_admob_adapter_spec_6.2.0.0_53.zip",
            checksum: "1944e49c7a5497719d3742adb7fe484e8a7738718cda77a582c81a52c47652b5"
        ),
        .binaryTarget(
            name: "bigo_ads_ironsource_adapter",
            url: "https://static-fed-oss.adsbigo.com/bigoads-framework/bigo-ads-ironsource-adapter_spec_6.2.0.0_53.zip",
            checksum: "ca50328805fbe6e10313561a1e2760298436212e4a7b015dc5d51bd0ef68e5b7"
        ),
        .binaryTarget(
            name: "bigo_ads_max_adapter",
            url: "https://static-fed-oss.adsbigo.com/bigoads-framework/bigo_ads_max_adapter_spec_6.2.0.0_53.zip",
            checksum: "78d8c1cda48799438e6f2bf5aaad2b324c54b3774b72ebb0dc8301604ec0a645"
        ),
        .binaryTarget(
            name: "bigo_ads_new_max_adapter",
            url: "https://static-fed-oss.adsbigo.com/bigoads-framework/bigo_ads_new_max_adapter_spec_6.2.0.0_53.zip",
            checksum: "66f485f6b03e80daeafda76cc2814e815a31b46301bff568115bb56730da42a2"
        ),
    ]
)
