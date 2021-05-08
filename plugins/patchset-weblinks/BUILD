load("//tools/bzl:plugin.bzl", "gerrit_plugin")

gerrit_plugin(
    name = "patchset-weblinks",
    srcs = glob(["src/main/java/**/*.java"]),
    manifest_entries = [
        "Gerrit-PluginName: patchset-weblinks",
    ],
    resources = glob(["src/main/resources/**/*"]),
)
