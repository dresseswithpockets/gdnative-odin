package demo

import gd ".."
import gdn "../gdn"
import "core:strings"
import "core:mem"
import "core:fmt"
import "core:runtime"

@(export)
godot_gdnative_init :: proc "c" (options: ^gd.GdnativeInitOptions) {
    gd.init_api(options)
}

@(export)
godot_gdnative_terminate :: proc "c" (options: ^gd.GdnativeInitOptions) {
    gd.terminate_api(options)
}

@(export)
godot_nativescript_init :: proc "c" (handle: rawptr) {
    context = gd.godot_context()

    gd.print("registering simple class")

    create := gdn.InstanceCreateFunc{nil,nil,nil}
    create.create_func = simple_constructor

    destroy := gdn.InstanceDestroyFunc{nil,nil,nil}
    destroy.destroy_func = simple_destructor

    gd.ns_api.register_class(handle, "SIMPLE", "Reference", create, destroy)

    get_data := gdn.InstanceMethod{}
    get_data.method = simple_get_data

    attributes := gdn.MethodAttributes{.Disabled}

    gd.ns_api.register_method(handle, "SIMPLE", "get_data", attributes, get_data)
}

UserData :: struct {
    message: string,
}

simple_constructor :: proc "c" (instance, r_method_data: rawptr) -> rawptr {
    context = gd.godot_context()

    user_data := new(UserData)
    user_data.message = "Hello World from GDNative!"

    return user_data
}

simple_destructor :: proc "c" (instance, r_method_data, r_user_data: rawptr) {
    context = gd.godot_context()
    free(r_user_data)
}

simple_get_data :: proc "c" (instance, r_method_data, r_user_data: rawptr, num_args: gdn.Int, args: [^]gdn.Variant) -> gdn.Variant {
    context = gd.godot_context()
    user_data := cast(^UserData)r_user_data

    cstr := strings.clone_to_cstring(user_data.message)
    defer free(cast(rawptr)cstr)

    data: gdn.String
    ret: gdn.Variant
    gd.core_api.string_new(&data)
    gd.core_api.string_parse_utf8(&data, cstr)
    gd.core_api.variant_new_string(&ret, &data)
    gd.core_api.string_destroy(&data)

    return ret;
}
