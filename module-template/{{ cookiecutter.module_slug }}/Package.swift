// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "{{ cookiecutter.module_name }}",
    defaultLocalization: "en",
    platforms: [.iOS(.v{{ cookiecutter.ios_deployment_target }})],
    products: [
        .library(
            name: "{{ cookiecutter.module_slug }}",
            targets: ["{{ cookiecutter.module_slug }}"]
        ),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "{{ cookiecutter.module_slug }}",
            dependencies: [
            ],
            path: "Sources",
            resources: [.process("Resources")]
        ),
        .testTarget(
            name: "{{ cookiecutter.module_slug }}Tests",
            dependencies: [
            ],
            path: "Tests",
            resources: [.process("Resources")]
        ),
    ]
)
