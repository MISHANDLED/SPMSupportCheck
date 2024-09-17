// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "LikeMindsFeed",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "LikeMindsFeed",
            targets: ["LikeMindsFeedWrapper", "LikeMindsFeed"])
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.7.1")
    ],
    targets: [
        .binaryTarget(
            name: "LikeMindsFeed",
            path: "LikeMindsFeed.xcframework"
        ),
        .target(
            name: "LikeMindsFeedWrapper",
            dependencies: [
                "LikeMindsFeed",
                .product(name: "Alamofire", package: "Alamofire")
            ],
            path: "Sources",
            linkerSettings: [
                .linkedFramework("Alamofire")
            ]
        )
    ]
)
