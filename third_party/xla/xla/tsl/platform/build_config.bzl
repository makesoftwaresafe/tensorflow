"""Provides a redirection point for platform specific implementations of starlark utilities."""

load(
    "//xla/tsl:package_groups.bzl",
    "DEFAULT_LOAD_VISIBILITY",
    "LEGACY_TSL_PLATFORM_BUILD_CONFIG_USERS",
)
load(
    "//xla/tsl/platform/default:build_config.bzl",
    _pyx_library = "pyx_library",
    _tf_additional_all_protos = "tf_additional_all_protos",
    _tf_additional_core_deps = "tf_additional_core_deps",
    _tf_additional_device_tracer_srcs = "tf_additional_device_tracer_srcs",
    _tf_additional_lib_deps = "tf_additional_lib_deps",
    _tf_additional_lib_hdrs = "tf_additional_lib_hdrs",
    _tf_additional_rpc_deps = "tf_additional_rpc_deps",
    _tf_additional_tensor_coding_deps = "tf_additional_tensor_coding_deps",
    _tf_additional_test_deps = "tf_additional_test_deps",
    _tf_cuda_root_path_deps = "tf_cuda_root_path_deps",
    _tf_error_logging_deps = "tf_error_logging_deps",
    _tf_fingerprint_deps = "tf_fingerprint_deps",
    _tf_google_mobile_srcs_no_runtime = "tf_google_mobile_srcs_no_runtime",
    _tf_google_mobile_srcs_only_runtime = "tf_google_mobile_srcs_only_runtime",
    _tf_jspb_proto_library = "tf_jspb_proto_library",
    _tf_lib_proto_parsing_deps = "tf_lib_proto_parsing_deps",
    _tf_logging_deps = "tf_logging_deps",
    _tf_platform_alias = "tf_platform_alias",
    _tf_platform_deps = "tf_platform_deps",
    _tf_portable_deps_no_runtime = "tf_portable_deps_no_runtime",
    _tf_portable_proto_lib = "tf_portable_proto_lib",
    _tf_proto_library = "tf_proto_library",
    _tf_protobuf_compiler_deps = "tf_protobuf_compiler_deps",
    _tf_protobuf_deps = "tf_protobuf_deps",
    _tf_protos_grappler = "tf_protos_grappler",
    _tf_protos_grappler_impl = "tf_protos_grappler_impl",
    _tf_protos_profiler_service = "tf_protos_profiler_service",
    _tf_py_clif_cc = "tf_py_clif_cc",
    _tf_pyclif_proto_library = "tf_pyclif_proto_library",
    _tf_resource_deps = "tf_resource_deps",
    _tf_stream_executor_deps = "tf_stream_executor_deps",
    _tf_windows_aware_platform_deps = "tf_windows_aware_platform_deps",
    _tsl_cc_test = "tsl_cc_test",
    _tsl_grpc_credentials_deps = "tsl_grpc_credentials_deps",
    _tsl_protobuf_deps = "tsl_protobuf_deps",
)

visibility(DEFAULT_LOAD_VISIBILITY + LEGACY_TSL_PLATFORM_BUILD_CONFIG_USERS)

pyx_library = _pyx_library
tf_additional_all_protos = _tf_additional_all_protos
tf_additional_core_deps = _tf_additional_core_deps
tf_additional_device_tracer_srcs = _tf_additional_device_tracer_srcs
tf_additional_lib_deps = _tf_additional_lib_deps
tf_additional_lib_hdrs = _tf_additional_lib_hdrs
tf_additional_rpc_deps = _tf_additional_rpc_deps
tf_additional_tensor_coding_deps = _tf_additional_tensor_coding_deps
tf_additional_test_deps = _tf_additional_test_deps
tf_cuda_root_path_deps = _tf_cuda_root_path_deps
tf_error_logging_deps = _tf_error_logging_deps
tf_fingerprint_deps = _tf_fingerprint_deps
tf_google_mobile_srcs_no_runtime = _tf_google_mobile_srcs_no_runtime
tf_google_mobile_srcs_only_runtime = _tf_google_mobile_srcs_only_runtime
tf_jspb_proto_library = _tf_jspb_proto_library
tf_lib_proto_parsing_deps = _tf_lib_proto_parsing_deps
tf_logging_deps = _tf_logging_deps
tf_platform_alias = _tf_platform_alias
tf_platform_deps = _tf_platform_deps
tf_portable_proto_lib = _tf_portable_proto_lib
tf_portable_deps_no_runtime = _tf_portable_deps_no_runtime
tf_proto_library = _tf_proto_library
tf_protobuf_compiler_deps = _tf_protobuf_compiler_deps
tf_protobuf_deps = _tf_protobuf_deps
tf_protos_grappler = _tf_protos_grappler
tf_protos_grappler_impl = _tf_protos_grappler_impl
tf_protos_profiler_service = _tf_protos_profiler_service
tf_py_clif_cc = _tf_py_clif_cc
tf_pyclif_proto_library = _tf_pyclif_proto_library
tf_resource_deps = _tf_resource_deps
tf_stream_executor_deps = _tf_stream_executor_deps
tf_windows_aware_platform_deps = _tf_windows_aware_platform_deps
tsl_protobuf_deps = _tsl_protobuf_deps
tsl_cc_test = _tsl_cc_test
tsl_grpc_credentials_deps = _tsl_grpc_credentials_deps
