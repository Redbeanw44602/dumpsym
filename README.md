# DumpSYM

Sometimes, we need to extract symbols from declarations. So this compiler plugin was born.

### Build

> As far as I know, there are some problems with the clang plugin executing under Windows, so I recommend that all operations be performed under Linux.

- Building llvm will consume a lot of time and resources, it is recommended to pre-install llvm from your system package manager, xmake can detect system packages.
- Run `xmake` to build.

### Usage

Simply pass `-fplugin=...` to clang and the plugin will run automatically.

> [!NOTE]
> Because LLVM is used, both ItaniumABI and MicrosoftABI are supported.

- Example:

```
$ clang++ -fplugin=/path/to/plugin/libdumpsym.so test.cpp
```

- The result will be generated in the `<TU>.symbols` file

```
$ cat test.cpp.symbols
_Z3func
main
```
