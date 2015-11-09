# nonetwork

[![Build Status][build-status]][travis]
[![License][license]](LICENSE)

Break standard network functions using `LD_PRELOAD`.

```
$ gcc -shared -fPIC nonetwork.c -o nonetwork.so
$ LD_PRELOAD=./nonetwork.so wget http://ip4.me
--2015-11-09 22:21:08--  http://ip4.me/
Resolving ip4.me (ip4.me)... failed: Non-recoverable failure in name resolution.
wget: unable to resolve host address `ip4.me'
```

Do not use for sandboxing and security! The network access can be easily
re-enabled, e.g. by removing `LD_PRELOAD` environment variable.

[license]: https://img.shields.io/badge/License-MIT-brightgreen.png
[travis]: https://travis-ci.org/starius/nonetwork
[build-status]: https://travis-ci.org/starius/nonetwork.png?branch=master
