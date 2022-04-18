package gd

import "core:os"
import "core:runtime"
import "core:mem"
import "gdn"

godot_context :: proc "contextless" () -> runtime.Context {
    return godot_context_ex(core_api)
}

godot_context_ex :: proc "contextless" (api: ^gdn.GdnativeCoreApiStruct) -> runtime.Context {
    c : runtime.Context
    _gd_context_init(api, &c)
    return c
}

_gd_context_init :: proc "contextless" (api: ^gdn.GdnativeCoreApiStruct, c: ^runtime.Context) {
    if c == nil {
        return
    }

    c.allocator.procedure = gd_allocator_proc
    c.allocator.data = api

    c.temp_allocator.procedure = runtime.default_temp_allocator_proc
    c.temp_allocator.data = &runtime.global_default_temp_allocator_data
    
    when !ODIN_DISABLE_ASSERT {
        c.assertion_failure_proc = runtime.default_assertion_failure_proc
    }

    c.logger.procedure = runtime.default_logger_proc // todo(ash): godot print/err logger
    c.logger.data = api
}

gd_allocator :: proc "contextless" (api: ^gdn.GdnativeCoreApiStruct) -> mem.Allocator {
    return mem.Allocator{
        procedure = gd_allocator_proc,
        data = api,
    }
}

gd_allocator_proc :: proc(allocator_data: rawptr,
                          mode: mem.Allocator_Mode,
                          size,
                          alignment: int,
                          old_memory: rawptr,
                          old_size: int,
                          loc := #caller_location) -> ([]byte, mem.Allocator_Error) {
    api := cast(^gdn.GdnativeCoreApiStruct)allocator_data
    switch mode {
        case .Alloc:
            ptr := api.alloc(cast(gdn.Int)size)
            if ptr == nil {
                return nil, .Out_Of_Memory
            }
            return mem.byte_slice(ptr, size), nil
    
        case .Free:
            api.free(old_memory)
    
        case .Free_All:
            return nil, .Mode_Not_Implemented
    
        case .Resize:
            ptr: rawptr
            if old_memory == nil {
                ptr = api.alloc(cast(gdn.Int)size)
                if ptr == nil {
                    return nil, .Out_Of_Memory
                }
                return mem.byte_slice(ptr, size), nil
            }
            ptr = api.realloc(ptr, cast(gdn.Int)size)
            if ptr == nil {
                return nil, .Out_Of_Memory
            }
            return mem.byte_slice(ptr, size), nil
    
        case .Query_Features:
            set := (^mem.Allocator_Mode_Set)(old_memory)
            if set != nil {
                set^ = {.Alloc, .Free, .Resize, .Query_Features}
            }
            return nil, nil
    
        case .Query_Info:
            return nil, .Mode_Not_Implemented
        }
    
        return nil, nil
}
