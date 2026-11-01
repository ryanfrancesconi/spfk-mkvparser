# spfk-mkvparser

The parsing half of [libwebm](https://github.com/webmproject/libwebm), Google's Matroska/WebM
library, repackaged for Swift Package Manager. It is vendored third-party code with no Swift API:
[spfk-matroska](https://github.com/ryanfrancesconi/spfk-matroska) is the Swift layer over it, and
nothing else should need to depend on it directly.

Despite the project's name it is a Matroska parser, and WebM is a Matroska profile. Only
`mkvparser` and the one header it needs from `common/` are vendored; the muxer and the newer
callback parser are left out, because this package only reads. Decoding is not vendored.

## Upstream

The vendored files are byte-identical to upstream, in upstream's directory layout, with public
headers exposed to SwiftPM through symlinks. A sync bulk-mirrors upstream's `mkvparser/` and
`common/webmids.h` and updates `SPFK_MKVPARSER_UPSTREAM_REVISION` in `upstream_revision.h`, which
records the libwebm commit. Vendored sources are never edited. The package has its own semantic
versioning, independent of libwebm's.

## License

BSD 3-Clause (`LICENSE.TXT`), Google Inc. `PATENTS.TXT` carries the WebM project's additional patent
grant and `AUTHORS.TXT` the contributor list, both reproduced unmodified as the license requires.
