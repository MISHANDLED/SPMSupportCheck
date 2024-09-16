// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "LikeMindsFeed",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "LikeMindsFeed",
            targets: ["LikeMindsFeed"])
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
                .target(name: "LikeMindsFeed"),
                .product(name: "Alamofire", package: "Alamofire")
            ],
            path: "Sources"
        )
    ]
)
