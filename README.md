# spfk-mkvparser

The Matroska and WebM parser from Google's [libwebm](https://github.com/webmproject/libwebm),
packaged for Swift Package Manager. Only `mkvparser` and `common/webmids.h` are included; it has no
Swift API. [spfk-matroska](https://github.com/ryanfrancesconi/spfk-matroska) is the Swift layer
over it.

The vendored files are unmodified from upstream. `upstream_revision.h` records the libwebm commit
they come from.

## License

BSD 3-Clause (`LICENSE.TXT`), Google Inc. `PATENTS.TXT` holds the WebM project's additional patent
grant and `AUTHORS.TXT` the contributor list, both included unmodified as the license requires.
