package gd

import "gdn"
import "core:mem"

GdnativeInitOptions :: gdn.GdnativeInitOptions

core_api: ^gdn.GdnativeCoreApiStruct
ns_api: ^gdn.GdnativeExtNativescriptApiStruct
android_api: ^gdn.GdnativeExtAndroidApiStruct
arvr_api: ^gdn.GdnativeExtArvrApiStruct
net_api: ^gdn.GdnativeExtNetApiStruct
ps_api: ^gdn.GdnativeExtPluginscriptApiStruct
video_api: ^gdn.GdnativeExtVideodecoderApiStruct

init_api :: proc(options: ^GdnativeInitOptions) {
    core_api := options.api_struct
    for i in 0..<core_api.num_extensions {
        extension: ^gdn.GdnativeApiStruct = mem.ptr_offset(core_api.extensions, i)^
        switch extension.type {
            case .GdnativeCore:            core_api = transmute(^gdn.GdnativeCoreApiStruct)extension
            case .GdnativeExtNativescript: ns_api = transmute(^gdn.GdnativeExtNativescriptApiStruct)extension
            case .GdnativeExtAndroid:      android_api = transmute(^gdn.GdnativeExtAndroidApiStruct)extension
            case .GdnativeExtArvr:         arvr_api = transmute(^gdn.GdnativeExtArvrApiStruct)extension
            case .GdnativeExtNet:          net_api = transmute(^gdn.GdnativeExtNetApiStruct)extension
            case .GdnativeExtPluginscript: ps_api = transmute(^gdn.GdnativeExtPluginscriptApiStruct)extension
            case .GdnativeExtVideodecoder: video_api = transmute(^gdn.GdnativeExtVideodecoderApiStruct)extension
        }
    }
}
