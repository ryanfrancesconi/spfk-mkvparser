# spfk-mkvparser

The Matroska and WebM parser from Google's [libwebm](https://github.com/webmproject/libwebm),
packaged for Swift Package Manager. Only `mkvparser` and `common/webmids.h` are included; it has no
Swift API. [spfk-matroska](https://github.com/ryanfrancesconi/spfk-matroska) is the Swift layer
over it.

The current upstream base is libwebm commit **6184f4484a826724b5293837134ab9492261b941** (nearest
tag `libwebm-1.0.0.32`), tracked via `SPFK_MKVPARSER_UPSTREAM_REVISION` in `upstream_revision.h`.
The vendored files are unmodified from upstream.

## License

BSD 3-Clause (`LICENSE.TXT`), Google Inc. `PATENTS.TXT` holds the WebM project's additional patent
grant and `AUTHORS.TXT` the contributor list, both included unmodified as the license requires.
