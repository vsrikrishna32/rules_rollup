# Declare the local Bazel workspace.
workspace(name = "aspect_rules_rollup")

# Fetch deps needed only locally for development
load(":internal_deps.bzl", "rules_rollup_internal_deps")

rules_rollup_internal_deps()

load("//rollup:dependencies.bzl", "rules_rollup_dependencies")

# Fetch dependencies which users need as well
rules_rollup_dependencies()

load("//rollup:repositories.bzl", "rollup_repositories")

rollup_repositories(name = "rollup")

load("@rollup//:npm_repositories.bzl", rollup_npm_repositories = "npm_repositories")

rollup_npm_repositories()

load("@rules_nodejs//nodejs:repositories.bzl", "nodejs_register_toolchains")

nodejs_register_toolchains(
    name = "nodejs",
    node_version = "16.9.0",
)

load("@aspect_bazel_lib//lib:repositories.bzl", "DEFAULT_YQ_VERSION", "aspect_bazel_lib_dependencies", "register_yq_toolchains")

aspect_bazel_lib_dependencies(override_local_config_platform = True)

register_yq_toolchains(
    version = DEFAULT_YQ_VERSION,
)

load("@aspect_rules_js//npm:npm_import.bzl", "npm_translate_lock")

npm_translate_lock(
    name = "npm",
    pnpm_lock = "//example:pnpm-lock.yaml",
)

load("@npm//:repositories.bzl", "npm_repositories")

npm_repositories()

# For running our own unit tests
load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")

bazel_skylib_workspace()

############################################
# Gazelle, for generating bzl_library targets
load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")
load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies")

go_rules_dependencies()

go_register_toolchains(version = "1.19.3")

gazelle_dependencies()
