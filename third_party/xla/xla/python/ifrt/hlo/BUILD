load("//xla:xla.default.bzl", "xla_cc_test")
load("//xla/tsl:tsl.bzl", "internal_visibility")
load("//xla/tsl:tsl.default.bzl", "get_compatible_with_portable")

package(
    # copybara:uncomment default_applicable_licenses = ["//tensorflow:license"],
    default_visibility = internal_visibility([
        "//xla/python/ifrt:users",
        "//xla/python/ifrt:friends",
        "//xla/python/ifrt:internal",
    ]),
)

cc_library(
    name = "hlo_program",
    srcs = ["hlo_program.cc"],
    hdrs = ["hlo_program.h"],
    compatible_with = get_compatible_with_portable(),
    deps = [
        "//xla:status_macros",
        "//xla/pjrt:mlir_to_hlo",
        "//xla/python/ifrt",
        "//xla/tsl/framework/mlir:status_scoped_diagnostic_handler",
        "//xla/tsl/platform:errors",
        "@com_google_absl//absl/status",
        "@com_google_absl//absl/status:statusor",
        "@com_google_absl//absl/strings:string_view",
        "@highwayhash",
        "@highwayhash//:arch_specific",
        "@highwayhash//:hh_types",
        "@llvm-project//llvm:Support",
        "@llvm-project//mlir:BytecodeWriter",
        "@llvm-project//mlir:IR",
        "@llvm-project//mlir:Parser",
        "@llvm-project//mlir:Support",
    ],
)

xla_cc_test(
    name = "hlo_program_test",
    srcs = ["hlo_program_test.cc"],
    deps = [
        ":hlo_program",
        "//xla/pjrt:mlir_to_hlo",
        "//xla/tsl/platform:statusor",
        "@com_google_absl//absl/status:statusor",
        "@com_google_absl//absl/strings:string_view",
        "@com_google_googletest//:gtest_main",
        "@llvm-project//mlir:IR",
    ],
)

cc_library(
    name = "hlo_program_serdes",
    srcs = ["hlo_program_serdes.cc"],
    compatible_with = get_compatible_with_portable(),
    deps = [
        ":hlo_program",
        "//xla/mlir/utils:error_util",
        "//xla/mlir_hlo:mhlo_passes",
        "//xla/pjrt:mlir_to_hlo",
        "//xla/python/ifrt:serdes",
        "//xla/python/ifrt:serdes_version",
        "//xla/python/ifrt:serdes_week_4_old_version_accessor",
        "@com_google_absl//absl/status",
        "@com_google_absl//absl/status:statusor",
        "@com_google_absl//absl/strings",
        "@llvm-project//llvm:Support",
        "@llvm-project//mlir:IR",
        "@llvm-project//mlir:Pass",
        "@stablehlo//:stablehlo_serialization",
    ],
    alwayslink = True,
)

xla_cc_test(
    name = "hlo_program_serdes_test",
    srcs = ["hlo_program_serdes_test.cc"],
    deps = [
        ":hlo_program",
        ":hlo_program_serdes",
        "//xla/pjrt:mlir_to_hlo",
        "//xla/python/ifrt:serdes",
        "//xla/python/ifrt:serdes_proto_cc",
        "//xla/python/ifrt:serdes_test_util",
        "//xla/python/ifrt:serdes_version",
        "//xla/tsl/platform:status_matchers",
        "//xla/tsl/platform:statusor",
        "@com_google_absl//absl/log",
        "@com_google_absl//absl/status",
        "@com_google_absl//absl/strings:string_view",
        "@com_google_googletest//:gtest_main",
        "@llvm-project//llvm:Support",
        "@llvm-project//mlir:FuncDialect",
        "@llvm-project//mlir:IR",
        "@llvm-project//mlir:Support",
        "@stablehlo//:stablehlo_ops",
    ],
)
