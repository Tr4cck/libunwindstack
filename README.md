# libunwindstack

## Overview

Android Open Source Project `libunwindstack` standalone build.

## Building

### Prerequisites

- Android NDK (tested with 29.0.14033849)
- CMake 3.22.1+

### Initialize Submodules

```bash
./init_submodules.sh
```

Or manually:

```bash
git submodule update --init --recursive
```

### Build for Android

```bash
./build.sh
```

This builds for `arm64-v8a` by default. To build for other architectures, modify `ANDROID_ABI` in `build.sh`:

- `arm64-v8a` - ARM 64-bit
- `armeabi-v7a` - ARM 32-bit
- `x86_64` - x86-64
- `x86` - x86

## Project Structure

```
stackplz/
├── external/           # Android platform dependencies
│   ├── unwinding/      # libunwindstack sources
│   ├── art/            # ART runtime (DEX support)
│   ├── lzma/           # LZMA compression
│   ├── zstd/           # ZSTD compression
│   └── bionic/         # Bionic libc headers
├── shim/               # Compatibility shims (minimal)
├── lib.cpp             # Main library interface
├── CMakeLists.txt      # Build configuration
└── build.sh            # Build script
```

## Dependencies

All dependencies are pulled from Android Open Source Project (AOSP) repositories:

- `system/unwinding` - Core libunwindstack
- `platform/art` - DEX file support
- `external/lzma` - LZMA compression
- `external/zstd` - ZSTD compression
- `system/core` (libbase, libprocinfo)
- `platform/bionic` - libc headers

## TODOs

- [ ] complete `lib.cpp`
- [ ] add `rustc_demangle` support

## License

This project includes code from the Android Open Source Project and follows the same licensing terms (Apache 2.0).
