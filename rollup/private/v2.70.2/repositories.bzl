"@generated by @aspect_rules_js//npm/private:npm_translate_lock.bzl from pnpm lock file @//:pnpm-lock.yaml"

load("@aspect_rules_js//npm:npm_import.bzl", "npm_import")

def npm_repositories():
    "Generated npm_import repository rules corresponding to npm packages in @//:pnpm-lock.yaml"
    npm_import(
        name = "npm__rollup__2.70.2",
        integrity = "sha512-EitogNZnfku65I1DD5Mxe8JYRUCy0hkK5X84IlDtUs+O6JRMpRciXTzyCUuX11b5L5pvjH+OmFXiQ3XjabcXgg==",
        root_package = "",
        link_workspace = "",
        link_packages = [""],
        package = "rollup",
        version = "2.70.2",
        transitive_closure = {
            "rollup": ["2.70.2"],
        },
    )
