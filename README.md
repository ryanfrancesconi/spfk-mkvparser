# spfk-mkvparser

[libwebm](https://github.com/webmproject/libwebm)'s `mkvparser` packaged for Swift Package Manager.

## Overview

spfk-mkvparser is an independent SPM repackaging of the parsing half of
[webmproject/libwebm](https://github.com/webmproject/libwebm), Google's Matroska/WebM library.
Despite the project name it is a **Matroska** parser — WebM is a Matroska profile, so one parser
covers both containers.

Only `mkvparser/` and the one header it includes from `common/` are vendored. The muxer
(`mkvmuxer/`), the newer `webm_parser/` callback API, the WebVTT tooling and the sample programs are
all excluded — this package exists to demux, and nothing here writes.

The current upstream base is **libwebm `6184f4484a826724b5293837134ab9492261b941`** (2026-04-21,
three commits past `libwebm-1.0.0.32`), tracked via `SPFK_MKVPARSER_UPSTREAM_REVISION` in
`Sources/mkvparser/upstream_revision.h`.

## License

BSD 3-Clause (`LICENSE.TXT`), Google Inc. `PATENTS.TXT` carries the WebM project's additional
patent grant and `AUTHORS.TXT` the contributor list; both are reproduced unmodified as the license
requires.

Note that this package parses containers only. Decoding is not vendored and never will be — see
`plans/matroska-demuxer.md` for why that boundary is deliberate.

## Structure

The source tree mirrors upstream's directory layout, so syncing with upstream is a directory-level
diff rather than a per-file merge:

```
Sources/mkvparser/
    mkvparser/      mkvparser.{h,cc}, mkvreader.{h,cc}   (upstream mkvparser/)
    common/         webmids.h                            (upstream common/)
    include/        module.modulemap + symlinks          (SPM-specific)
```

Upstream includes its own headers by project-relative path (`#include "mkvparser/mkvparser.h"`,
`#include "common/webmids.h"`), which is why `Package.swift` sets `headerSearchPath(".")` and the
public headers are exposed as symlinks under `include/mkvparser/` rather than being moved there.
That keeps every vendored file byte-identical to upstream.

## Syncing with Upstream

Bulk-mirror upstream's `mkvparser/` directory and `common/webmids.h` into the matching directories,
preserving `include/`. Do not edit vendored sources. After a sync, update
`SPFK_MKVPARSER_UPSTREAM_REVISION` and the revision line in this README.

## Versioning

This package uses its own semantic versioning starting at `1.0.0`, independent of libwebm's version
numbers. The upstream revision is tracked in `upstream_revision.h`.
