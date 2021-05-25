// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "pop",
    platforms: [.iOS(.v9), .macOS(.v10_10), .tvOS(.v10)],
    products: [
        .library (
            name: "pop",
            targets: ["pop"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "pop",
            path: "pop",
            exclude: [
                "pop-ios-Info.plist",
                "pop-osx-Info.plist",
                "pop-tvos-Info.plist",
                "POP.h",
                "Swift"
            ],
            cSettings: [
                .headerSearchPath("."),
                .headerSearchPath("WebCore"),
                .define("POP_SWIFT_PACKAGE")
            ],
            swiftSettings: [
                .define("POP_SWIFT_PACKAGE")
            ]
        ),
    ],
    swiftLanguageVersions: [.v5],
    cxxLanguageStandard: .cxx11
)
