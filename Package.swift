// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SPIRV-Cross",
    defaultLocalization: nil,
    platforms: nil,
    pkgConfig: nil,
    providers: nil,
    products: [
        .library(
            name: "SPIRV-Cross",
            targets: ["SPIRV-Cross"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SPIRV-Cross",
            dependencies: [],
            path: "./",
            exclude: [
                "samples",
                "Makefile",
                "cmake",
                "gn",
                "pkg-config",
                "reference",
                "shaders",
                "shaders-hlsl",
                "shaders-hlsl-no-opt",
                "shaders-msl",
                "shaders-msl-no-opt",
                "shaders-no-opt",
                "shaders-other",
                "shaders-reflection",
                "shaders-ue4",
                "shaders-ue4-no-opt",
                "tests-other",
                "README.md",
                "appveyor.yml",
                "build_glslang_spirv_tools.sh",
                "main.cpp",
                "LICENSE",
                "format_all.sh",
                "CODE_OF_CONDUCT.md",
                "CMakeLists.txt",
                "checkout_glslang_spirv_tools.sh",
                "test_shaders.py",
                "test_shaders.sh",
                "update_test_shaders.sh",
                
                // to to bug in spm with 5.3, we have to ignore .hpp
                // to silent warnings
                "include/spirv_cross/barrier.hpp",
                "include/spirv_cross/sampler.hpp",
                "include/spirv_cross/image.hpp",
                "include/spirv_cross/thread_group.hpp",
                "include/spirv_cross/internal_interface.hpp",
                "spirv_cfg.hpp",
                "spirv_common.hpp",
                "spirv_cpp.hpp",
                "spirv_cross.h",
                "spirv_cross_containers.hpp",
                "spirv_cross_error_handling.hpp",
                "spirv_cross_parsed_ir.hpp",
                "spirv_cross_util.hpp",
                "spirv_hlsl.hpp",
                "spirv_cross.hpp",
                "spirv_glsl.hpp",
                "spirv_msl.hpp",
                "spirv_parser.hpp",
                "spirv_reflect.hpp",
                "spirv.hpp",
            ],
            sources: [
                ".",
                "spirv_cross_c.cpp",
            ],
            resources: nil,
            publicHeadersPath: ".",
            cSettings: nil,
            cxxSettings: [
                .headerSearchPath("**")
            ],
            swiftSettings: nil,
            linkerSettings: nil)
    ],
    swiftLanguageVersions: nil,
    cLanguageStandard: nil,
    cxxLanguageStandard: .cxx11)
