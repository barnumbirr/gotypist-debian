# gotypist-debian

This repository contains the source to build a Debian package for [gotypist](https://github.com/pb-/gotypist).

## Usage

If you have [Docker](https://www.docker.com/) installed locally, just run the following:

```bash
user@hostname$ ./build.sh
```
By default this will build gotypist 0.8.0 on Debian Buster.

If you want to customize the build at runtime, use the following:

```bash
user@hostname$ ./build.sh -i debian:unstable-slim -v <version>
```
Don't forget to update `debian/changelog` so your package is generated with the correct version.

## Release

To publish a new package version to Github, follow these steps:
  * update the `VERSION` variable in `build.sh`
  * add a new entry in `debian/changelog`
  * create a new tag with the Debian package version

## License

```
This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.

In jurisdictions that recognize copyright laws, the author or authors
of this software dedicate any and all copyright interest in the
software to the public domain. We make this dedication for the benefit
of the public at large and to the detriment of our heirs and
successors. We intend this dedication to be an overt act of
relinquishment in perpetuity of all present and future rights to this
software under copyright law.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

For more information, please refer to <https://unlicense.org>

```
