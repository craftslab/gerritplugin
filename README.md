# gerritplugin

[![Actions Status](https://github.com/craftslab/gerritplugin/workflows/CI/badge.svg?branch=master&event=push)](https://github.com/craftslab/gerritplugin/actions?query=workflow%3ACI)
[![License](https://img.shields.io/github/license/craftslab/gerritplugin.svg?color=brightgreen)](https://github.com/craftslab/gerritplugin/blob/master/LICENSE)
[![Tag](https://img.shields.io/github/tag/craftslab/gerritplugin.svg?color=brightgreen)](https://github.com/craftslab/gerritplugin/tags)



## Introduction

*gerritplugin* is the plugins of *[Gerrit](https://www.gerritcodereview.com/)* written in Java.



## Prerequisites

- Gerrit >= 3.3.3
- OpenJDK >= 11.0.0



## Install

```bash
./script/install.sh
```



## Download

```bash
./script/download.sh 3.3.3 /path/to/source
```



## Build

- Build Gerrit (optional)

```bash
./script/build.sh /path/to/source gerrit 3.3.3
```



- Build plugins

```bash
./script/build.sh /path/to/source plugins 3.3.3
```



## Run

```bash
cp /path/to/source/bazel-bin/plugins/patchset-weblinks/patchset-weblinks.jar /path/to/install/plugins/

/path/to/install/bin/gerrit.sh restart
```



## License

Project License can be found [here](LICENSE).



## Reference

- [links-to-external-tools](https://gerrit-review.googlesource.com/Documentation/dev-plugins.html#links-to-external-tools)
- [simple-configuration](https://gerrit-review.googlesource.com/Documentation/dev-plugins.html#simple-configuration)
