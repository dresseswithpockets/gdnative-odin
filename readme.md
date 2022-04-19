# GDNative Binding for [Odin](https://odin-lang.org/)

Check out the [demo](https://github.com/dresseswithpockets/gdnative-odin/blob/main/example/demo.odin) for an example usage of this binding.

This binding is roughly 1-to-1 with the C API, but all `godot_xx_` function prefixes have been removed. There are also some helper methods in `gdnative_helper.odin`.

The binding is very much a work in progress! There are bound to be missing features and bugs. Feel free to post an issue if you're having problems with the binding.

## Getting Started

Export your init and terminate functions as c procs:
```odin
import gd "shared:gdnative-odin"

@(export)
godot_gdnative_init :: proc "c" (options: ^gd.GdnativeInitOptions) {
}

@(export)
godot_gdnative_terminate :: proc "c" (options: ^gd.GdnativeInitOptions) {
}
```

Initializing the binding will map all loaded godot extensions to accessible fields:

```odin
godot_gdnative_init :: proc "c" (options: ^gd.GdnativeInitOptions) {
    gd.init_api(options)
}

// later...
gd.ns_api.register_class(handle, "MyClass", "Node", create, destroy)
```

Finally, make sure to terminate:
```odin
godot_gdnative_terminate :: proc "c" (options: ^gd.GdnativeInitOptions) {
    gd.terminate_api(options)
}
```

## Known Issues

### Segfaults on Linux when attempting to instance a registered class.

This is a bug with Odin's codegen and sadly wont be fixed until Odin's codegen on linux is fixed.
