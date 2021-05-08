# Pathset Weblinks Configuration



## Build

```shell
bazel build plugins/patchset-weblinks
cp ./bazel-bin/plugins/patchset-weblinks/patchset-weblinks.jar /path/to/install/plugins/
```

*NOTICE: Clean browser cache and refresh web page required.*



## Configuration

```toml
# /path/to/install/etc/gerrit.config
[plugin "patchset-weblinks"]
	imageUrl = http://placehold.it/16x16.gif
	webName = example
	webUrl = http://example.com/
```



## Reference

- [links-to-external-tools](https://gerrit-review.googlesource.com/Documentation/dev-plugins.html#links-to-external-tools)
- [simple-configuration](https://gerrit-review.googlesource.com/Documentation/dev-plugins.html#simple-configuration)
