package gd

import "gdn"
import "core:strings"

FreeFunc :: proc "c" (data: rawptr)
ClassConstructor :: proc "c" (instance: rawptr, raw_method_data: rawptr) -> rawptr
ClassDestructor :: proc "c" (instance: rawptr, raw_method_data, raw_user_data: rawptr)
ClassMethod :: proc "c" (instance, r_method_data, r_user_data: rawptr, num_args: gdn.Int, args: [^]gdn.Variant) -> gdn.Variant

ClassInfo :: struct {
    name: string,
    base: string,

    create: ClassConstructor,
    create_data: rawptr,
    create_free: FreeFunc,

    destroy: ClassDestructor,
    destory_data: rawptr,
    destroy_free: FreeFunc,

    methods: []MethodInfo,
    properties: []PropertyInfo,
    signals: []SignalInfo,
}

MethodInfo :: struct {
    class_name: string,
    func_name: string,
    rpc_mode: gdn.MethodRpcMode,
    method: ClassMethod,
    method_data: rawptr,
    free_func: FreeFunc,
}

PropertyInfo :: struct {
    class_name: string,
    prop_name: string,
    attr: gdn.PropertyAttributes,

    set_func : #type proc "c" (instance, raw_method_data, raw_user_data: rawptr, value : ^gdn.Variant),
    set_data : rawptr,
    set_free : FreeFunc,

    get_func : #type proc "c" (instance, raw_method_data, raw_user_data: rawptr) -> gdn.Variant,
    get_data : rawptr,
    get_free : FreeFunc,
}

SignalInfo :: struct {

}

register_class_basic :: proc(handle: rawptr, name: cstring, base: cstring, create: ClassConstructor, destroy: ClassDestructor) {
    create := gdn.InstanceCreateFunc{create,nil,nil}
    destroy := gdn.InstanceDestroyFunc{destroy,nil,nil}
    ns_api.register_class(handle, name, base, create, destroy)
}

// WIP
register_class_info :: proc(handle: rawptr, info: ^ClassInfo) {
}

print :: proc "contextless" (msg: cstring) {
    data: gdn.String
    core_api.string_new(&data)
    defer core_api.string_destroy(&data)

    core_api.string_parse_utf8(&data, msg)
    core_api.print(&data)
}

 /*
    register_tool_class : #type proc "c" (p_gdnative_handle : rawptr, p_name : cstring, p_base : cstring, p_create_func : InstanceCreateFunc, p_destroy_func : InstanceDestroyFunc),
    register_method : #type proc "c" (p_gdnative_handle : rawptr, p_name : cstring, p_function_name : cstring, p_attr : ^MethodAttributes, p_method : ^InstanceMethod),
    register_property : #type proc "c" (p_gdnative_handle : rawptr, p_name : cstring, p_path : cstring, p_attr : ^PropertyAttributes, p_set_func : PropertySetFunc, p_get_func : PropertyGetFunc),
    register_signal : #type proc "c" (p_gdnative_handle : rawptr, p_name : cstring, p_signal : ^Signal),
 */
