# `ufbx` Bindings for Odin

- `/ufbx` contains all you need to get going, simply copy it into your project and import 
- `/deps` contains the C source files used to build `ufbx.lib` and their license
- `/example` contains a simple example of using the API from Odin

## Running the Example

From this directory, simply run `odin run example`. You should see a spinning Suzanne head.

## Compiling `ufbx.c`

On Windows, `ufbx.lib` is produced with:

```powershell
clang -c deps/ufbx.c -o deps/ufbx.obj -target x86_64-pc-windows-msvc -O3
lib /OUT:ufbx/ufbx.lib deps/ufbx.obj
rm deps/ufbx.obj
```

Feel free to add builds for other platforms.
