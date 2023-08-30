# `ufbx` Bindings for Odin

- `/ufbx` contains all you need to get going, simply copy it into your project and import 
- `/deps` contains the C source files used to build `ufbx.lib` and their license
- `/example` contains a simple example of using the API from Odin

## Running the Example

From this directory, simply run `odin run example`. The output should look like:

```powershell
Object Suzanne
-> mesh with 358u faces
```

## Compiling `ufbx.c`

On Windows, `ufbx.lib` is produced with:

```powershell
clang -c src/ufbx.c -o src/ufbx.obj -target x86_64-pc-windows-msvc
lib /OUT:ufbx/ufbx.lib src/ufbx.obj
rm src/ufbx.obj
```

Feel free to add builds for other platforms.