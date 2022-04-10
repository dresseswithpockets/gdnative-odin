package gd

foreign import "gdnative"

import _c "core:c"

Int :: _c.int;
Real :: _c.float;
Bool :: _c.bool;
Object :: rawptr;
ClassConstructor :: #type proc "c" () -> rawptr;
GdnativeInitFn :: #type proc "c" (unamed0 : ^GdnativeInitOptions);
GdnativeTerminateFn :: #type proc "c" (unamed0 : ^GdnativeTerminateOptions);
GdnativeProcedureFn :: #type proc "c" (unamed0 : ^Array) -> Variant;
NativeCallCb :: #type proc "c" (unamed0 : rawptr, unamed1 : ^Array) -> Variant;
PoolByteArrayReadAccess :: PoolArrayReadAccess;
PoolIntArrayReadAccess :: PoolArrayReadAccess;
PoolRealArrayReadAccess :: PoolArrayReadAccess;
PoolStringArrayReadAccess :: PoolArrayReadAccess;
PoolVector2ArrayReadAccess :: PoolArrayReadAccess;
PoolVector3ArrayReadAccess :: PoolArrayReadAccess;
PoolColorArrayReadAccess :: PoolArrayReadAccess;
PoolByteArrayWriteAccess :: PoolArrayWriteAccess;
PoolIntArrayWriteAccess :: PoolArrayWriteAccess;
PoolRealArrayWriteAccess :: PoolArrayWriteAccess;
PoolStringArrayWriteAccess :: PoolArrayWriteAccess;
PoolVector2ArrayWriteAccess :: PoolArrayWriteAccess;
PoolVector3ArrayWriteAccess :: PoolArrayWriteAccess;
PoolColorArrayWriteAccess :: PoolArrayWriteAccess;
CharType :: _c.wchar_t;
PluginscriptInstanceData :: rawptr;
PluginscriptScriptData :: rawptr;
PluginscriptLanguageData :: rawptr;
GdNativeAudioMixCallback :: #type proc "c" (unamed0 : rawptr, unamed1 : ^_c.float, unamed2 : _c.int) -> _c.int;

Error :: enum i32 {
    Ok,
    Failed,
    ErrUnavailable,
    ErrUnconfigured,
    ErrUnauthorized,
    ErrParameterRangeError,
    ErrOutOfMemory,
    ErrFileNotFound,
    ErrFileBadDrive,
    ErrFileBadPath,
    ErrFileNoPermission,
    ErrFileAlreadyInUse,
    ErrFileCantOpen,
    ErrFileCantWrite,
    ErrFileCantRead,
    ErrFileUnrecognized,
    ErrFileCorrupt,
    ErrFileMissingDependencies,
    ErrFileEof,
    ErrCantOpen,
    ErrCantCreate,
    ErrQueryFailed,
    ErrAlreadyInUse,
    ErrLocked,
    ErrTimeout,
    ErrCantConnect,
    ErrCantResolve,
    ErrConnectionError,
    ErrCantAcquireResource,
    ErrCantFork,
    ErrInvalidData,
    ErrInvalidParameter,
    ErrAlreadyExists,
    ErrDoesNotExist,
    ErrDatabaseCantRead,
    ErrDatabaseCantWrite,
    ErrCompilationFailed,
    ErrMethodNotFound,
    ErrLinkFailed,
    ErrScriptFailed,
    ErrCyclicLink,
    ErrInvalidDeclaration,
    ErrDuplicateSymbol,
    ErrParseError,
    ErrBusy,
    ErrSkip,
    ErrHelp,
    ErrBug,
    ErrPrinterOnFire,
};

VariantType :: enum i32 {
    Nil,
    Bool,
    Int,
    Real,
    String,
    Vector2,
    Rect2,
    Vector3,
    Transform2D,
    Plane,
    Quat,
    Aabb,
    Basis,
    Transform,
    Color,
    NodePath,
    Rid,
    Object,
    Dictionary,
    Array,
    PoolByteArray,
    PoolIntArray,
    PoolRealArray,
    PoolStringArray,
    PoolVector2Array,
    PoolVector3Array,
    PoolColorArray,
};

VariantCallErrorError :: enum i32 {
    CallErrorCallOk,
    CallErrorCallErrorInvalidMethod,
    CallErrorCallErrorInvalidArgument,
    CallErrorCallErrorTooManyArguments,
    CallErrorCallErrorTooFewArguments,
    CallErrorCallErrorInstanceIsNull,
};

VariantOperator :: enum i32 {
    VariantOpEqual,
    VariantOpNotEqual,
    VariantOpLess,
    VariantOpLessEqual,
    VariantOpGreater,
    VariantOpGreaterEqual,
    VariantOpAdd,
    VariantOpSubtract,
    VariantOpMultiply,
    VariantOpDivide,
    VariantOpNegate,
    VariantOpPositive,
    VariantOpModule,
    VariantOpStringConcat,
    VariantOpShiftLeft,
    VariantOpShiftRight,
    VariantOpBitAnd,
    VariantOpBitOr,
    VariantOpBitXor,
    VariantOpBitNegate,
    VariantOpAnd,
    VariantOpOr,
    VariantOpXor,
    VariantOpNot,
    VariantOpIn,
    VariantOpMax,
};

Vector3Axis :: enum i32 {
    X,
    Y,
    Z,
};

GdnativeApiTypes :: enum i32 {
    GdnativeCore,
    GdnativeExtNativescript,
    GdnativeExtPluginscript,
    GdnativeExtAndroid,
    GdnativeExtArvr,
    GdnativeExtVideodecoder,
    GdnativeExtNet,
};

MethodRpcMode :: enum i32 {
    Disabled,
    Remote,
    Master,
    Puppet,
    Slave = 3,
    Remotesync,
    Sync = 4,
    Mastersync,
    Puppetsync,
};

PropertyHint :: enum i32 {
    None,
    Range,
    ExpRange,
    Enum,
    ExpEasing,
    Length,
    SpriteFrame,
    KeyAccel,
    Flags,
    Layers2DRender,
    Layers2DPhysics,
    Layers3DRender,
    Layers3DPhysics,
    File,
    Dir,
    GlobalFile,
    GlobalDir,
    ResourceType,
    MultilineText,
    PlaceholderText,
    ColorNoAlpha,
    ImageCompressLossy,
    ImageCompressLossless,
    ObjectId,
    TypeString,
    NodePathToEditedNode,
    MethodOfVariantType,
    MethodOfBaseType,
    MethodOfInstance,
    MethodOfScript,
    PropertyOfVariantType,
    PropertyOfBaseType,
    PropertyOfInstance,
    PropertyOfScript,
    Max,
};

PropertyUsageFlags :: enum i32 {
    PropertyUsageStorage = 1,
    PropertyUsageEditor = 2,
    PropertyUsageNetwork = 4,
    PropertyUsageEditorHelper = 8,
    PropertyUsageCheckable = 16,
    PropertyUsageChecked = 32,
    PropertyUsageInternationalized = 64,
    PropertyUsageGroup = 128,
    PropertyUsageCategory = 256,
    PropertyUsageStoreIfNonzero = 512,
    PropertyUsageStoreIfNonone = 1024,
    PropertyUsageNoInstanceState = 2048,
    PropertyUsageRestartIfChanged = 4096,
    PropertyUsageScriptVariable = 8192,
    PropertyUsageStoreIfNull = 16384,
    PropertyUsageAnimateAsTrigger = 32768,
    PropertyUsageUpdateAllIfModified = 65536,
    PropertyUsageDefault = 1,
    PropertyUsageDefaultIntl = 1,
    PropertyUsageNoeditor = 1,
};

ArvrInterfaceGdnative :: struct {
    version : GdnativeApiVersion,
    constructor : #type proc "c" (unamed0 : ^Object) -> rawptr,
    destructor : #type proc "c" (unamed0 : rawptr),
    get_name : #type proc "c" (unamed0 : rawptr) -> String,
    get_capabilities : #type proc "c" (unamed0 : rawptr) -> Int,
    get_anchor_detection_is_enabled : #type proc "c" (unamed0 : rawptr) -> Bool,
    set_anchor_detection_is_enabled : #type proc "c" (unamed0 : rawptr, unamed1 : Bool),
    is_stereo : #type proc "c" (unamed0 : rawptr) -> Bool,
    is_initialized : #type proc "c" (unamed0 : rawptr) -> Bool,
    initialize : #type proc "c" (unamed0 : rawptr) -> Bool,
    uninitialize : #type proc "c" (unamed0 : rawptr),
    get_render_targetsize : #type proc "c" (unamed0 : rawptr) -> Vector2,
    get_transform_for_eye : #type proc "c" (unamed0 : rawptr, unamed1 : Int, unamed2 : ^Transform) -> Transform,
    fill_projection_for_eye : #type proc "c" (unamed0 : rawptr, unamed1 : ^Real, unamed2 : Int, unamed3 : Real, unamed4 : Real, unamed5 : Real),
    commit_for_eye : #type proc "c" (unamed0 : rawptr, unamed1 : Int, unamed2 : ^Rid, unamed3 : ^Rect2),
    process : #type proc "c" (unamed0 : rawptr),
    get_external_texture_for_eye : #type proc "c" (unamed0 : rawptr, unamed1 : Int) -> Int,
    notification : #type proc "c" (unamed0 : rawptr, unamed1 : Int),
    get_camera_feed_id : #type proc "c" (unamed0 : rawptr) -> Int,
    get_external_depth_for_eye : #type proc "c" (unamed0 : rawptr, unamed1 : Int) -> Int,
};

Aabb :: struct {
    dont_touch_that : [24]u8,
};

Array :: struct {
    dont_touch_that : [1]u8,
};

Basis :: struct {
    dont_touch_that : [36]u8,
};

Color :: struct {
    dont_touch_that : [16]u8,
};

Dictionary :: struct {
    dont_touch_that : [1]u8,
};

MethodBind :: struct {
    dont_touch_that : [1]u8,
};

GdnativeApiVersion :: struct {
    major : _c.uint,
    minor : _c.uint,
};

GdnativeApiStruct :: struct {
    type : _c.uint,
    version : GdnativeApiVersion,
    next : ^GdnativeApiStruct,
};

GdnativeCoreApiStruct :: struct {
    type : _c.uint,
    version : GdnativeApiVersion,
    next : ^GdnativeApiStruct,
    num_extensions : _c.uint,
    extensions : ^^GdnativeApiStruct,
    godot_color_new_rgba : #type proc "c" (r_dest : ^Color, p_r : _c.float, p_g : _c.float, p_b : _c.float, p_a : _c.float),
    godot_color_new_rgb : #type proc "c" (r_dest : ^Color, p_r : _c.float, p_g : _c.float, p_b : _c.float),
    godot_color_get_r : #type proc "c" (p_self : ^Color) -> _c.float,
    godot_color_set_r : #type proc "c" (p_self : ^Color, r : _c.float),
    godot_color_get_g : #type proc "c" (p_self : ^Color) -> _c.float,
    godot_color_set_g : #type proc "c" (p_self : ^Color, g : _c.float),
    godot_color_get_b : #type proc "c" (p_self : ^Color) -> _c.float,
    godot_color_set_b : #type proc "c" (p_self : ^Color, b : _c.float),
    godot_color_get_a : #type proc "c" (p_self : ^Color) -> _c.float,
    godot_color_set_a : #type proc "c" (p_self : ^Color, a : _c.float),
    godot_color_get_h : #type proc "c" (p_self : ^Color) -> _c.float,
    godot_color_get_s : #type proc "c" (p_self : ^Color) -> _c.float,
    godot_color_get_v : #type proc "c" (p_self : ^Color) -> _c.float,
    godot_color_as_string : #type proc "c" (p_self : ^Color) -> String,
    godot_color_to_rgba32 : #type proc "c" (p_self : ^Color) -> _c.int,
    godot_color_to_argb32 : #type proc "c" (p_self : ^Color) -> _c.int,
    godot_color_gray : #type proc "c" (p_self : ^Color) -> _c.float,
    godot_color_inverted : #type proc "c" (p_self : ^Color) -> Color,
    godot_color_contrasted : #type proc "c" (p_self : ^Color) -> Color,
    godot_color_linear_interpolate : #type proc "c" (p_self : ^Color, p_b : ^Color, p_t : _c.float) -> Color,
    godot_color_blend : #type proc "c" (p_self : ^Color, p_over : ^Color) -> Color,
    godot_color_to_html : #type proc "c" (p_self : ^Color, p_with_alpha : Bool) -> String,
    godot_color_operator_equal : #type proc "c" (p_self : ^Color, p_b : ^Color) -> Bool,
    godot_color_operator_less : #type proc "c" (p_self : ^Color, p_b : ^Color) -> Bool,
    godot_vector2_new : #type proc "c" (r_dest : ^Vector2, p_x : _c.float, p_y : _c.float),
    godot_vector2_as_string : #type proc "c" (p_self : ^Vector2) -> String,
    godot_vector2_normalized : #type proc "c" (p_self : ^Vector2) -> Vector2,
    godot_vector2_length : #type proc "c" (p_self : ^Vector2) -> _c.float,
    godot_vector2_angle : #type proc "c" (p_self : ^Vector2) -> _c.float,
    godot_vector2_length_squared : #type proc "c" (p_self : ^Vector2) -> _c.float,
    godot_vector2_is_normalized : #type proc "c" (p_self : ^Vector2) -> Bool,
    godot_vector2_distance_to : #type proc "c" (p_self : ^Vector2, p_to : ^Vector2) -> _c.float,
    godot_vector2_distance_squared_to : #type proc "c" (p_self : ^Vector2, p_to : ^Vector2) -> _c.float,
    godot_vector2_angle_to : #type proc "c" (p_self : ^Vector2, p_to : ^Vector2) -> _c.float,
    godot_vector2_angle_to_point : #type proc "c" (p_self : ^Vector2, p_to : ^Vector2) -> _c.float,
    godot_vector2_linear_interpolate : #type proc "c" (p_self : ^Vector2, p_b : ^Vector2, p_t : _c.float) -> Vector2,
    godot_vector2_cubic_interpolate : #type proc "c" (p_self : ^Vector2, p_b : ^Vector2, p_pre_a : ^Vector2, p_post_b : ^Vector2, p_t : _c.float) -> Vector2,
    godot_vector2_rotated : #type proc "c" (p_self : ^Vector2, p_phi : _c.float) -> Vector2,
    godot_vector2_tangent : #type proc "c" (p_self : ^Vector2) -> Vector2,
    godot_vector2_floor : #type proc "c" (p_self : ^Vector2) -> Vector2,
    godot_vector2_snapped : #type proc "c" (p_self : ^Vector2, p_by : ^Vector2) -> Vector2,
    godot_vector2_aspect : #type proc "c" (p_self : ^Vector2) -> _c.float,
    godot_vector2_dot : #type proc "c" (p_self : ^Vector2, p_with : ^Vector2) -> _c.float,
    godot_vector2_slide : #type proc "c" (p_self : ^Vector2, p_n : ^Vector2) -> Vector2,
    godot_vector2_bounce : #type proc "c" (p_self : ^Vector2, p_n : ^Vector2) -> Vector2,
    godot_vector2_reflect : #type proc "c" (p_self : ^Vector2, p_n : ^Vector2) -> Vector2,
    godot_vector2_abs : #type proc "c" (p_self : ^Vector2) -> Vector2,
    godot_vector2_clamped : #type proc "c" (p_self : ^Vector2, p_length : _c.float) -> Vector2,
    godot_vector2_operator_add : #type proc "c" (p_self : ^Vector2, p_b : ^Vector2) -> Vector2,
    godot_vector2_operator_subtract : #type proc "c" (p_self : ^Vector2, p_b : ^Vector2) -> Vector2,
    godot_vector2_operator_multiply_vector : #type proc "c" (p_self : ^Vector2, p_b : ^Vector2) -> Vector2,
    godot_vector2_operator_multiply_scalar : #type proc "c" (p_self : ^Vector2, p_b : _c.float) -> Vector2,
    godot_vector2_operator_divide_vector : #type proc "c" (p_self : ^Vector2, p_b : ^Vector2) -> Vector2,
    godot_vector2_operator_divide_scalar : #type proc "c" (p_self : ^Vector2, p_b : _c.float) -> Vector2,
    godot_vector2_operator_equal : #type proc "c" (p_self : ^Vector2, p_b : ^Vector2) -> Bool,
    godot_vector2_operator_less : #type proc "c" (p_self : ^Vector2, p_b : ^Vector2) -> Bool,
    godot_vector2_operator_neg : #type proc "c" (p_self : ^Vector2) -> Vector2,
    godot_vector2_set_x : #type proc "c" (p_self : ^Vector2, p_x : _c.float),
    godot_vector2_set_y : #type proc "c" (p_self : ^Vector2, p_y : _c.float),
    godot_vector2_get_x : #type proc "c" (p_self : ^Vector2) -> _c.float,
    godot_vector2_get_y : #type proc "c" (p_self : ^Vector2) -> _c.float,
    godot_quat_new : #type proc "c" (r_dest : ^Quat, p_x : _c.float, p_y : _c.float, p_z : _c.float, p_w : _c.float),
    godot_quat_new_with_axis_angle : #type proc "c" (r_dest : ^Quat, p_axis : ^Vector3, p_angle : _c.float),
    godot_quat_get_x : #type proc "c" (p_self : ^Quat) -> _c.float,
    godot_quat_set_x : #type proc "c" (p_self : ^Quat, val : _c.float),
    godot_quat_get_y : #type proc "c" (p_self : ^Quat) -> _c.float,
    godot_quat_set_y : #type proc "c" (p_self : ^Quat, val : _c.float),
    godot_quat_get_z : #type proc "c" (p_self : ^Quat) -> _c.float,
    godot_quat_set_z : #type proc "c" (p_self : ^Quat, val : _c.float),
    godot_quat_get_w : #type proc "c" (p_self : ^Quat) -> _c.float,
    godot_quat_set_w : #type proc "c" (p_self : ^Quat, val : _c.float),
    godot_quat_as_string : #type proc "c" (p_self : ^Quat) -> String,
    godot_quat_length : #type proc "c" (p_self : ^Quat) -> _c.float,
    godot_quat_length_squared : #type proc "c" (p_self : ^Quat) -> _c.float,
    godot_quat_normalized : #type proc "c" (p_self : ^Quat) -> Quat,
    godot_quat_is_normalized : #type proc "c" (p_self : ^Quat) -> Bool,
    godot_quat_inverse : #type proc "c" (p_self : ^Quat) -> Quat,
    godot_quat_dot : #type proc "c" (p_self : ^Quat, p_b : ^Quat) -> _c.float,
    godot_quat_xform : #type proc "c" (p_self : ^Quat, p_v : ^Vector3) -> Vector3,
    godot_quat_slerp : #type proc "c" (p_self : ^Quat, p_b : ^Quat, p_t : _c.float) -> Quat,
    godot_quat_slerpni : #type proc "c" (p_self : ^Quat, p_b : ^Quat, p_t : _c.float) -> Quat,
    godot_quat_cubic_slerp : #type proc "c" (p_self : ^Quat, p_b : ^Quat, p_pre_a : ^Quat, p_post_b : ^Quat, p_t : _c.float) -> Quat,
    godot_quat_operator_multiply : #type proc "c" (p_self : ^Quat, p_b : _c.float) -> Quat,
    godot_quat_operator_add : #type proc "c" (p_self : ^Quat, p_b : ^Quat) -> Quat,
    godot_quat_operator_subtract : #type proc "c" (p_self : ^Quat, p_b : ^Quat) -> Quat,
    godot_quat_operator_divide : #type proc "c" (p_self : ^Quat, p_b : _c.float) -> Quat,
    godot_quat_operator_equal : #type proc "c" (p_self : ^Quat, p_b : ^Quat) -> Bool,
    godot_quat_operator_neg : #type proc "c" (p_self : ^Quat) -> Quat,
    godot_basis_new_with_rows : #type proc "c" (r_dest : ^Basis, p_x_axis : ^Vector3, p_y_axis : ^Vector3, p_z_axis : ^Vector3),
    godot_basis_new_with_axis_and_angle : #type proc "c" (r_dest : ^Basis, p_axis : ^Vector3, p_phi : _c.float),
    godot_basis_new_with_euler : #type proc "c" (r_dest : ^Basis, p_euler : ^Vector3),
    godot_basis_as_string : #type proc "c" (p_self : ^Basis) -> String,
    godot_basis_inverse : #type proc "c" (p_self : ^Basis) -> Basis,
    godot_basis_transposed : #type proc "c" (p_self : ^Basis) -> Basis,
    godot_basis_orthonormalized : #type proc "c" (p_self : ^Basis) -> Basis,
    godot_basis_determinant : #type proc "c" (p_self : ^Basis) -> _c.float,
    godot_basis_rotated : #type proc "c" (p_self : ^Basis, p_axis : ^Vector3, p_phi : _c.float) -> Basis,
    godot_basis_scaled : #type proc "c" (p_self : ^Basis, p_scale : ^Vector3) -> Basis,
    godot_basis_get_scale : #type proc "c" (p_self : ^Basis) -> Vector3,
    godot_basis_get_euler : #type proc "c" (p_self : ^Basis) -> Vector3,
    godot_basis_tdotx : #type proc "c" (p_self : ^Basis, p_with : ^Vector3) -> _c.float,
    godot_basis_tdoty : #type proc "c" (p_self : ^Basis, p_with : ^Vector3) -> _c.float,
    godot_basis_tdotz : #type proc "c" (p_self : ^Basis, p_with : ^Vector3) -> _c.float,
    godot_basis_xform : #type proc "c" (p_self : ^Basis, p_v : ^Vector3) -> Vector3,
    godot_basis_xform_inv : #type proc "c" (p_self : ^Basis, p_v : ^Vector3) -> Vector3,
    godot_basis_get_orthogonal_index : #type proc "c" (p_self : ^Basis) -> _c.int,
    godot_basis_new : #type proc "c" (r_dest : ^Basis),
    godot_basis_new_with_euler_quat : #type proc "c" (r_dest : ^Basis, p_euler : ^Quat),
    godot_basis_get_elements : #type proc "c" (p_self : ^Basis, p_elements : ^Vector3),
    godot_basis_get_axis : #type proc "c" (p_self : ^Basis, p_axis : _c.int) -> Vector3,
    godot_basis_set_axis : #type proc "c" (p_self : ^Basis, p_axis : _c.int, p_value : ^Vector3),
    godot_basis_get_row : #type proc "c" (p_self : ^Basis, p_row : _c.int) -> Vector3,
    godot_basis_set_row : #type proc "c" (p_self : ^Basis, p_row : _c.int, p_value : ^Vector3),
    godot_basis_operator_equal : #type proc "c" (p_self : ^Basis, p_b : ^Basis) -> Bool,
    godot_basis_operator_add : #type proc "c" (p_self : ^Basis, p_b : ^Basis) -> Basis,
    godot_basis_operator_subtract : #type proc "c" (p_self : ^Basis, p_b : ^Basis) -> Basis,
    godot_basis_operator_multiply_vector : #type proc "c" (p_self : ^Basis, p_b : ^Basis) -> Basis,
    godot_basis_operator_multiply_scalar : #type proc "c" (p_self : ^Basis, p_b : _c.float) -> Basis,
    godot_vector3_new : #type proc "c" (r_dest : ^Vector3, p_x : _c.float, p_y : _c.float, p_z : _c.float),
    godot_vector3_as_string : #type proc "c" (p_self : ^Vector3) -> String,
    godot_vector3_min_axis : #type proc "c" (p_self : ^Vector3) -> _c.int,
    godot_vector3_max_axis : #type proc "c" (p_self : ^Vector3) -> _c.int,
    godot_vector3_length : #type proc "c" (p_self : ^Vector3) -> _c.float,
    godot_vector3_length_squared : #type proc "c" (p_self : ^Vector3) -> _c.float,
    godot_vector3_is_normalized : #type proc "c" (p_self : ^Vector3) -> Bool,
    godot_vector3_normalized : #type proc "c" (p_self : ^Vector3) -> Vector3,
    godot_vector3_inverse : #type proc "c" (p_self : ^Vector3) -> Vector3,
    godot_vector3_snapped : #type proc "c" (p_self : ^Vector3, p_by : ^Vector3) -> Vector3,
    godot_vector3_rotated : #type proc "c" (p_self : ^Vector3, p_axis : ^Vector3, p_phi : _c.float) -> Vector3,
    godot_vector3_linear_interpolate : #type proc "c" (p_self : ^Vector3, p_b : ^Vector3, p_t : _c.float) -> Vector3,
    godot_vector3_cubic_interpolate : #type proc "c" (p_self : ^Vector3, p_b : ^Vector3, p_pre_a : ^Vector3, p_post_b : ^Vector3, p_t : _c.float) -> Vector3,
    godot_vector3_dot : #type proc "c" (p_self : ^Vector3, p_b : ^Vector3) -> _c.float,
    godot_vector3_cross : #type proc "c" (p_self : ^Vector3, p_b : ^Vector3) -> Vector3,
    godot_vector3_outer : #type proc "c" (p_self : ^Vector3, p_b : ^Vector3) -> Basis,
    godot_vector3_to_diagonal_matrix : #type proc "c" (p_self : ^Vector3) -> Basis,
    godot_vector3_abs : #type proc "c" (p_self : ^Vector3) -> Vector3,
    godot_vector3_floor : #type proc "c" (p_self : ^Vector3) -> Vector3,
    godot_vector3_ceil : #type proc "c" (p_self : ^Vector3) -> Vector3,
    godot_vector3_distance_to : #type proc "c" (p_self : ^Vector3, p_b : ^Vector3) -> _c.float,
    godot_vector3_distance_squared_to : #type proc "c" (p_self : ^Vector3, p_b : ^Vector3) -> _c.float,
    godot_vector3_angle_to : #type proc "c" (p_self : ^Vector3, p_to : ^Vector3) -> _c.float,
    godot_vector3_slide : #type proc "c" (p_self : ^Vector3, p_n : ^Vector3) -> Vector3,
    godot_vector3_bounce : #type proc "c" (p_self : ^Vector3, p_n : ^Vector3) -> Vector3,
    godot_vector3_reflect : #type proc "c" (p_self : ^Vector3, p_n : ^Vector3) -> Vector3,
    godot_vector3_operator_add : #type proc "c" (p_self : ^Vector3, p_b : ^Vector3) -> Vector3,
    godot_vector3_operator_subtract : #type proc "c" (p_self : ^Vector3, p_b : ^Vector3) -> Vector3,
    godot_vector3_operator_multiply_vector : #type proc "c" (p_self : ^Vector3, p_b : ^Vector3) -> Vector3,
    godot_vector3_operator_multiply_scalar : #type proc "c" (p_self : ^Vector3, p_b : _c.float) -> Vector3,
    godot_vector3_operator_divide_vector : #type proc "c" (p_self : ^Vector3, p_b : ^Vector3) -> Vector3,
    godot_vector3_operator_divide_scalar : #type proc "c" (p_self : ^Vector3, p_b : _c.float) -> Vector3,
    godot_vector3_operator_equal : #type proc "c" (p_self : ^Vector3, p_b : ^Vector3) -> Bool,
    godot_vector3_operator_less : #type proc "c" (p_self : ^Vector3, p_b : ^Vector3) -> Bool,
    godot_vector3_operator_neg : #type proc "c" (p_self : ^Vector3) -> Vector3,
    godot_vector3_set_axis : #type proc "c" (p_self : ^Vector3, p_axis : Vector3Axis, p_val : _c.float),
    godot_vector3_get_axis : #type proc "c" (p_self : ^Vector3, p_axis : Vector3Axis) -> _c.float,
    godot_pool_byte_array_new : #type proc "c" (r_dest : ^PoolByteArray),
    godot_pool_byte_array_new_copy : #type proc "c" (r_dest : ^PoolByteArray, p_src : ^PoolByteArray),
    godot_pool_byte_array_new_with_array : #type proc "c" (r_dest : ^PoolByteArray, p_a : ^Array),
    godot_pool_byte_array_append : #type proc "c" (p_self : ^PoolByteArray, p_data : u8),
    godot_pool_byte_array_append_array : #type proc "c" (p_self : ^PoolByteArray, p_array : ^PoolByteArray),
    godot_pool_byte_array_insert : #type proc "c" (p_self : ^PoolByteArray, p_idx : _c.int, p_data : u8) -> Error,
    godot_pool_byte_array_invert : #type proc "c" (p_self : ^PoolByteArray),
    godot_pool_byte_array_push_back : #type proc "c" (p_self : ^PoolByteArray, p_data : u8),
    godot_pool_byte_array_remove : #type proc "c" (p_self : ^PoolByteArray, p_idx : _c.int),
    godot_pool_byte_array_resize : #type proc "c" (p_self : ^PoolByteArray, p_size : _c.int),
    godot_pool_byte_array_read : #type proc "c" (p_self : ^PoolByteArray) -> ^PoolByteArrayReadAccess,
    godot_pool_byte_array_write : #type proc "c" (p_self : ^PoolByteArray) -> ^PoolByteArrayWriteAccess,
    godot_pool_byte_array_set : #type proc "c" (p_self : ^PoolByteArray, p_idx : _c.int, p_data : u8),
    godot_pool_byte_array_get : #type proc "c" (p_self : ^PoolByteArray, p_idx : _c.int) -> u8,
    godot_pool_byte_array_size : #type proc "c" (p_self : ^PoolByteArray) -> _c.int,
    godot_pool_byte_array_destroy : #type proc "c" (p_self : ^PoolByteArray),
    godot_pool_int_array_new : #type proc "c" (r_dest : ^PoolIntArray),
    godot_pool_int_array_new_copy : #type proc "c" (r_dest : ^PoolIntArray, p_src : ^PoolIntArray),
    godot_pool_int_array_new_with_array : #type proc "c" (r_dest : ^PoolIntArray, p_a : ^Array),
    godot_pool_int_array_append : #type proc "c" (p_self : ^PoolIntArray, p_data : _c.int),
    godot_pool_int_array_append_array : #type proc "c" (p_self : ^PoolIntArray, p_array : ^PoolIntArray),
    godot_pool_int_array_insert : #type proc "c" (p_self : ^PoolIntArray, p_idx : _c.int, p_data : _c.int) -> Error,
    godot_pool_int_array_invert : #type proc "c" (p_self : ^PoolIntArray),
    godot_pool_int_array_push_back : #type proc "c" (p_self : ^PoolIntArray, p_data : _c.int),
    godot_pool_int_array_remove : #type proc "c" (p_self : ^PoolIntArray, p_idx : _c.int),
    godot_pool_int_array_resize : #type proc "c" (p_self : ^PoolIntArray, p_size : _c.int),
    godot_pool_int_array_read : #type proc "c" (p_self : ^PoolIntArray) -> ^PoolIntArrayReadAccess,
    godot_pool_int_array_write : #type proc "c" (p_self : ^PoolIntArray) -> ^PoolIntArrayWriteAccess,
    godot_pool_int_array_set : #type proc "c" (p_self : ^PoolIntArray, p_idx : _c.int, p_data : _c.int),
    godot_pool_int_array_get : #type proc "c" (p_self : ^PoolIntArray, p_idx : _c.int) -> _c.int,
    godot_pool_int_array_size : #type proc "c" (p_self : ^PoolIntArray) -> _c.int,
    godot_pool_int_array_destroy : #type proc "c" (p_self : ^PoolIntArray),
    godot_pool_real_array_new : #type proc "c" (r_dest : ^PoolRealArray),
    godot_pool_real_array_new_copy : #type proc "c" (r_dest : ^PoolRealArray, p_src : ^PoolRealArray),
    godot_pool_real_array_new_with_array : #type proc "c" (r_dest : ^PoolRealArray, p_a : ^Array),
    godot_pool_real_array_append : #type proc "c" (p_self : ^PoolRealArray, p_data : _c.float),
    godot_pool_real_array_append_array : #type proc "c" (p_self : ^PoolRealArray, p_array : ^PoolRealArray),
    godot_pool_real_array_insert : #type proc "c" (p_self : ^PoolRealArray, p_idx : _c.int, p_data : _c.float) -> Error,
    godot_pool_real_array_invert : #type proc "c" (p_self : ^PoolRealArray),
    godot_pool_real_array_push_back : #type proc "c" (p_self : ^PoolRealArray, p_data : _c.float),
    godot_pool_real_array_remove : #type proc "c" (p_self : ^PoolRealArray, p_idx : _c.int),
    godot_pool_real_array_resize : #type proc "c" (p_self : ^PoolRealArray, p_size : _c.int),
    godot_pool_real_array_read : #type proc "c" (p_self : ^PoolRealArray) -> ^PoolRealArrayReadAccess,
    godot_pool_real_array_write : #type proc "c" (p_self : ^PoolRealArray) -> ^PoolRealArrayWriteAccess,
    godot_pool_real_array_set : #type proc "c" (p_self : ^PoolRealArray, p_idx : _c.int, p_data : _c.float),
    godot_pool_real_array_get : #type proc "c" (p_self : ^PoolRealArray, p_idx : _c.int) -> _c.float,
    godot_pool_real_array_size : #type proc "c" (p_self : ^PoolRealArray) -> _c.int,
    godot_pool_real_array_destroy : #type proc "c" (p_self : ^PoolRealArray),
    godot_pool_string_array_new : #type proc "c" (r_dest : ^PoolStringArray),
    godot_pool_string_array_new_copy : #type proc "c" (r_dest : ^PoolStringArray, p_src : ^PoolStringArray),
    godot_pool_string_array_new_with_array : #type proc "c" (r_dest : ^PoolStringArray, p_a : ^Array),
    godot_pool_string_array_append : #type proc "c" (p_self : ^PoolStringArray, p_data : ^String),
    godot_pool_string_array_append_array : #type proc "c" (p_self : ^PoolStringArray, p_array : ^PoolStringArray),
    godot_pool_string_array_insert : #type proc "c" (p_self : ^PoolStringArray, p_idx : _c.int, p_data : ^String) -> Error,
    godot_pool_string_array_invert : #type proc "c" (p_self : ^PoolStringArray),
    godot_pool_string_array_push_back : #type proc "c" (p_self : ^PoolStringArray, p_data : ^String),
    godot_pool_string_array_remove : #type proc "c" (p_self : ^PoolStringArray, p_idx : _c.int),
    godot_pool_string_array_resize : #type proc "c" (p_self : ^PoolStringArray, p_size : _c.int),
    godot_pool_string_array_read : #type proc "c" (p_self : ^PoolStringArray) -> ^PoolStringArrayReadAccess,
    godot_pool_string_array_write : #type proc "c" (p_self : ^PoolStringArray) -> ^PoolStringArrayWriteAccess,
    godot_pool_string_array_set : #type proc "c" (p_self : ^PoolStringArray, p_idx : _c.int, p_data : ^String),
    godot_pool_string_array_get : #type proc "c" (p_self : ^PoolStringArray, p_idx : _c.int) -> String,
    godot_pool_string_array_size : #type proc "c" (p_self : ^PoolStringArray) -> _c.int,
    godot_pool_string_array_destroy : #type proc "c" (p_self : ^PoolStringArray),
    godot_pool_vector2_array_new : #type proc "c" (r_dest : ^PoolVector2Array),
    godot_pool_vector2_array_new_copy : #type proc "c" (r_dest : ^PoolVector2Array, p_src : ^PoolVector2Array),
    godot_pool_vector2_array_new_with_array : #type proc "c" (r_dest : ^PoolVector2Array, p_a : ^Array),
    godot_pool_vector2_array_append : #type proc "c" (p_self : ^PoolVector2Array, p_data : ^Vector2),
    godot_pool_vector2_array_append_array : #type proc "c" (p_self : ^PoolVector2Array, p_array : ^PoolVector2Array),
    godot_pool_vector2_array_insert : #type proc "c" (p_self : ^PoolVector2Array, p_idx : _c.int, p_data : ^Vector2) -> Error,
    godot_pool_vector2_array_invert : #type proc "c" (p_self : ^PoolVector2Array),
    godot_pool_vector2_array_push_back : #type proc "c" (p_self : ^PoolVector2Array, p_data : ^Vector2),
    godot_pool_vector2_array_remove : #type proc "c" (p_self : ^PoolVector2Array, p_idx : _c.int),
    godot_pool_vector2_array_resize : #type proc "c" (p_self : ^PoolVector2Array, p_size : _c.int),
    godot_pool_vector2_array_read : #type proc "c" (p_self : ^PoolVector2Array) -> ^PoolVector2ArrayReadAccess,
    godot_pool_vector2_array_write : #type proc "c" (p_self : ^PoolVector2Array) -> ^PoolVector2ArrayWriteAccess,
    godot_pool_vector2_array_set : #type proc "c" (p_self : ^PoolVector2Array, p_idx : _c.int, p_data : ^Vector2),
    godot_pool_vector2_array_get : #type proc "c" (p_self : ^PoolVector2Array, p_idx : _c.int) -> Vector2,
    godot_pool_vector2_array_size : #type proc "c" (p_self : ^PoolVector2Array) -> _c.int,
    godot_pool_vector2_array_destroy : #type proc "c" (p_self : ^PoolVector2Array),
    godot_pool_vector3_array_new : #type proc "c" (r_dest : ^PoolVector3Array),
    godot_pool_vector3_array_new_copy : #type proc "c" (r_dest : ^PoolVector3Array, p_src : ^PoolVector3Array),
    godot_pool_vector3_array_new_with_array : #type proc "c" (r_dest : ^PoolVector3Array, p_a : ^Array),
    godot_pool_vector3_array_append : #type proc "c" (p_self : ^PoolVector3Array, p_data : ^Vector3),
    godot_pool_vector3_array_append_array : #type proc "c" (p_self : ^PoolVector3Array, p_array : ^PoolVector3Array),
    godot_pool_vector3_array_insert : #type proc "c" (p_self : ^PoolVector3Array, p_idx : _c.int, p_data : ^Vector3) -> Error,
    godot_pool_vector3_array_invert : #type proc "c" (p_self : ^PoolVector3Array),
    godot_pool_vector3_array_push_back : #type proc "c" (p_self : ^PoolVector3Array, p_data : ^Vector3),
    godot_pool_vector3_array_remove : #type proc "c" (p_self : ^PoolVector3Array, p_idx : _c.int),
    godot_pool_vector3_array_resize : #type proc "c" (p_self : ^PoolVector3Array, p_size : _c.int),
    godot_pool_vector3_array_read : #type proc "c" (p_self : ^PoolVector3Array) -> ^PoolVector3ArrayReadAccess,
    godot_pool_vector3_array_write : #type proc "c" (p_self : ^PoolVector3Array) -> ^PoolVector3ArrayWriteAccess,
    godot_pool_vector3_array_set : #type proc "c" (p_self : ^PoolVector3Array, p_idx : _c.int, p_data : ^Vector3),
    godot_pool_vector3_array_get : #type proc "c" (p_self : ^PoolVector3Array, p_idx : _c.int) -> Vector3,
    godot_pool_vector3_array_size : #type proc "c" (p_self : ^PoolVector3Array) -> _c.int,
    godot_pool_vector3_array_destroy : #type proc "c" (p_self : ^PoolVector3Array),
    godot_pool_color_array_new : #type proc "c" (r_dest : ^PoolColorArray),
    godot_pool_color_array_new_copy : #type proc "c" (r_dest : ^PoolColorArray, p_src : ^PoolColorArray),
    godot_pool_color_array_new_with_array : #type proc "c" (r_dest : ^PoolColorArray, p_a : ^Array),
    godot_pool_color_array_append : #type proc "c" (p_self : ^PoolColorArray, p_data : ^Color),
    godot_pool_color_array_append_array : #type proc "c" (p_self : ^PoolColorArray, p_array : ^PoolColorArray),
    godot_pool_color_array_insert : #type proc "c" (p_self : ^PoolColorArray, p_idx : _c.int, p_data : ^Color) -> Error,
    godot_pool_color_array_invert : #type proc "c" (p_self : ^PoolColorArray),
    godot_pool_color_array_push_back : #type proc "c" (p_self : ^PoolColorArray, p_data : ^Color),
    godot_pool_color_array_remove : #type proc "c" (p_self : ^PoolColorArray, p_idx : _c.int),
    godot_pool_color_array_resize : #type proc "c" (p_self : ^PoolColorArray, p_size : _c.int),
    godot_pool_color_array_read : #type proc "c" (p_self : ^PoolColorArray) -> ^PoolColorArrayReadAccess,
    godot_pool_color_array_write : #type proc "c" (p_self : ^PoolColorArray) -> ^PoolColorArrayWriteAccess,
    godot_pool_color_array_set : #type proc "c" (p_self : ^PoolColorArray, p_idx : _c.int, p_data : ^Color),
    godot_pool_color_array_get : #type proc "c" (p_self : ^PoolColorArray, p_idx : _c.int) -> Color,
    godot_pool_color_array_size : #type proc "c" (p_self : ^PoolColorArray) -> _c.int,
    godot_pool_color_array_destroy : #type proc "c" (p_self : ^PoolColorArray),
    godot_pool_byte_array_read_access_copy : #type proc "c" (p_read : ^PoolByteArrayReadAccess) -> ^PoolByteArrayReadAccess,
    godot_pool_byte_array_read_access_ptr : #type proc "c" (p_read : ^PoolByteArrayReadAccess) -> ^u8,
    godot_pool_byte_array_read_access_operator_assign : #type proc "c" (p_read : ^PoolByteArrayReadAccess, p_other : ^PoolByteArrayReadAccess),
    godot_pool_byte_array_read_access_destroy : #type proc "c" (p_read : ^PoolByteArrayReadAccess),
    godot_pool_int_array_read_access_copy : #type proc "c" (p_read : ^PoolIntArrayReadAccess) -> ^PoolIntArrayReadAccess,
    godot_pool_int_array_read_access_ptr : #type proc "c" (p_read : ^PoolIntArrayReadAccess) -> ^_c.int,
    godot_pool_int_array_read_access_operator_assign : #type proc "c" (p_read : ^PoolIntArrayReadAccess, p_other : ^PoolIntArrayReadAccess),
    godot_pool_int_array_read_access_destroy : #type proc "c" (p_read : ^PoolIntArrayReadAccess),
    godot_pool_real_array_read_access_copy : #type proc "c" (p_read : ^PoolRealArrayReadAccess) -> ^PoolRealArrayReadAccess,
    godot_pool_real_array_read_access_ptr : #type proc "c" (p_read : ^PoolRealArrayReadAccess) -> ^_c.float,
    godot_pool_real_array_read_access_operator_assign : #type proc "c" (p_read : ^PoolRealArrayReadAccess, p_other : ^PoolRealArrayReadAccess),
    godot_pool_real_array_read_access_destroy : #type proc "c" (p_read : ^PoolRealArrayReadAccess),
    godot_pool_string_array_read_access_copy : #type proc "c" (p_read : ^PoolStringArrayReadAccess) -> ^PoolStringArrayReadAccess,
    godot_pool_string_array_read_access_ptr : #type proc "c" (p_read : ^PoolStringArrayReadAccess) -> ^String,
    godot_pool_string_array_read_access_operator_assign : #type proc "c" (p_read : ^PoolStringArrayReadAccess, p_other : ^PoolStringArrayReadAccess),
    godot_pool_string_array_read_access_destroy : #type proc "c" (p_read : ^PoolStringArrayReadAccess),
    godot_pool_vector2_array_read_access_copy : #type proc "c" (p_read : ^PoolVector2ArrayReadAccess) -> ^PoolVector2ArrayReadAccess,
    godot_pool_vector2_array_read_access_ptr : #type proc "c" (p_read : ^PoolVector2ArrayReadAccess) -> ^Vector2,
    godot_pool_vector2_array_read_access_operator_assign : #type proc "c" (p_read : ^PoolVector2ArrayReadAccess, p_other : ^PoolVector2ArrayReadAccess),
    godot_pool_vector2_array_read_access_destroy : #type proc "c" (p_read : ^PoolVector2ArrayReadAccess),
    godot_pool_vector3_array_read_access_copy : #type proc "c" (p_read : ^PoolVector3ArrayReadAccess) -> ^PoolVector3ArrayReadAccess,
    godot_pool_vector3_array_read_access_ptr : #type proc "c" (p_read : ^PoolVector3ArrayReadAccess) -> ^Vector3,
    godot_pool_vector3_array_read_access_operator_assign : #type proc "c" (p_read : ^PoolVector3ArrayReadAccess, p_other : ^PoolVector3ArrayReadAccess),
    godot_pool_vector3_array_read_access_destroy : #type proc "c" (p_read : ^PoolVector3ArrayReadAccess),
    godot_pool_color_array_read_access_copy : #type proc "c" (p_read : ^PoolColorArrayReadAccess) -> ^PoolColorArrayReadAccess,
    godot_pool_color_array_read_access_ptr : #type proc "c" (p_read : ^PoolColorArrayReadAccess) -> ^Color,
    godot_pool_color_array_read_access_operator_assign : #type proc "c" (p_read : ^PoolColorArrayReadAccess, p_other : ^PoolColorArrayReadAccess),
    godot_pool_color_array_read_access_destroy : #type proc "c" (p_read : ^PoolColorArrayReadAccess),
    godot_pool_byte_array_write_access_copy : #type proc "c" (p_write : ^PoolByteArrayWriteAccess) -> ^PoolByteArrayWriteAccess,
    godot_pool_byte_array_write_access_ptr : #type proc "c" (p_write : ^PoolByteArrayWriteAccess) -> ^u8,
    godot_pool_byte_array_write_access_operator_assign : #type proc "c" (p_write : ^PoolByteArrayWriteAccess, p_other : ^PoolByteArrayWriteAccess),
    godot_pool_byte_array_write_access_destroy : #type proc "c" (p_write : ^PoolByteArrayWriteAccess),
    godot_pool_int_array_write_access_copy : #type proc "c" (p_write : ^PoolIntArrayWriteAccess) -> ^PoolIntArrayWriteAccess,
    godot_pool_int_array_write_access_ptr : #type proc "c" (p_write : ^PoolIntArrayWriteAccess) -> ^_c.int,
    godot_pool_int_array_write_access_operator_assign : #type proc "c" (p_write : ^PoolIntArrayWriteAccess, p_other : ^PoolIntArrayWriteAccess),
    godot_pool_int_array_write_access_destroy : #type proc "c" (p_write : ^PoolIntArrayWriteAccess),
    godot_pool_real_array_write_access_copy : #type proc "c" (p_write : ^PoolRealArrayWriteAccess) -> ^PoolRealArrayWriteAccess,
    godot_pool_real_array_write_access_ptr : #type proc "c" (p_write : ^PoolRealArrayWriteAccess) -> ^_c.float,
    godot_pool_real_array_write_access_operator_assign : #type proc "c" (p_write : ^PoolRealArrayWriteAccess, p_other : ^PoolRealArrayWriteAccess),
    godot_pool_real_array_write_access_destroy : #type proc "c" (p_write : ^PoolRealArrayWriteAccess),
    godot_pool_string_array_write_access_copy : #type proc "c" (p_write : ^PoolStringArrayWriteAccess) -> ^PoolStringArrayWriteAccess,
    godot_pool_string_array_write_access_ptr : #type proc "c" (p_write : ^PoolStringArrayWriteAccess) -> ^String,
    godot_pool_string_array_write_access_operator_assign : #type proc "c" (p_write : ^PoolStringArrayWriteAccess, p_other : ^PoolStringArrayWriteAccess),
    godot_pool_string_array_write_access_destroy : #type proc "c" (p_write : ^PoolStringArrayWriteAccess),
    godot_pool_vector2_array_write_access_copy : #type proc "c" (p_write : ^PoolVector2ArrayWriteAccess) -> ^PoolVector2ArrayWriteAccess,
    godot_pool_vector2_array_write_access_ptr : #type proc "c" (p_write : ^PoolVector2ArrayWriteAccess) -> ^Vector2,
    godot_pool_vector2_array_write_access_operator_assign : #type proc "c" (p_write : ^PoolVector2ArrayWriteAccess, p_other : ^PoolVector2ArrayWriteAccess),
    godot_pool_vector2_array_write_access_destroy : #type proc "c" (p_write : ^PoolVector2ArrayWriteAccess),
    godot_pool_vector3_array_write_access_copy : #type proc "c" (p_write : ^PoolVector3ArrayWriteAccess) -> ^PoolVector3ArrayWriteAccess,
    godot_pool_vector3_array_write_access_ptr : #type proc "c" (p_write : ^PoolVector3ArrayWriteAccess) -> ^Vector3,
    godot_pool_vector3_array_write_access_operator_assign : #type proc "c" (p_write : ^PoolVector3ArrayWriteAccess, p_other : ^PoolVector3ArrayWriteAccess),
    godot_pool_vector3_array_write_access_destroy : #type proc "c" (p_write : ^PoolVector3ArrayWriteAccess),
    godot_pool_color_array_write_access_copy : #type proc "c" (p_write : ^PoolColorArrayWriteAccess) -> ^PoolColorArrayWriteAccess,
    godot_pool_color_array_write_access_ptr : #type proc "c" (p_write : ^PoolColorArrayWriteAccess) -> ^Color,
    godot_pool_color_array_write_access_operator_assign : #type proc "c" (p_write : ^PoolColorArrayWriteAccess, p_other : ^PoolColorArrayWriteAccess),
    godot_pool_color_array_write_access_destroy : #type proc "c" (p_write : ^PoolColorArrayWriteAccess),
    godot_array_new : #type proc "c" (r_dest : ^Array),
    godot_array_new_copy : #type proc "c" (r_dest : ^Array, p_src : ^Array),
    godot_array_new_pool_color_array : #type proc "c" (r_dest : ^Array, p_pca : ^PoolColorArray),
    godot_array_new_pool_vector3_array : #type proc "c" (r_dest : ^Array, p_pv3a : ^PoolVector3Array),
    godot_array_new_pool_vector2_array : #type proc "c" (r_dest : ^Array, p_pv2a : ^PoolVector2Array),
    godot_array_new_pool_string_array : #type proc "c" (r_dest : ^Array, p_psa : ^PoolStringArray),
    godot_array_new_pool_real_array : #type proc "c" (r_dest : ^Array, p_pra : ^PoolRealArray),
    godot_array_new_pool_int_array : #type proc "c" (r_dest : ^Array, p_pia : ^PoolIntArray),
    godot_array_new_pool_byte_array : #type proc "c" (r_dest : ^Array, p_pba : ^PoolByteArray),
    godot_array_set : #type proc "c" (p_self : ^Array, p_idx : _c.int, p_value : ^Variant),
    godot_array_get : #type proc "c" (p_self : ^Array, p_idx : _c.int) -> Variant,
    godot_array_operator_index : #type proc "c" (p_self : ^Array, p_idx : _c.int) -> ^Variant,
    godot_array_operator_index_const : #type proc "c" (p_self : ^Array, p_idx : _c.int) -> ^Variant,
    godot_array_append : #type proc "c" (p_self : ^Array, p_value : ^Variant),
    godot_array_clear : #type proc "c" (p_self : ^Array),
    godot_array_count : #type proc "c" (p_self : ^Array, p_value : ^Variant) -> _c.int,
    godot_array_empty : #type proc "c" (p_self : ^Array) -> Bool,
    godot_array_erase : #type proc "c" (p_self : ^Array, p_value : ^Variant),
    godot_array_front : #type proc "c" (p_self : ^Array) -> Variant,
    godot_array_back : #type proc "c" (p_self : ^Array) -> Variant,
    godot_array_find : #type proc "c" (p_self : ^Array, p_what : ^Variant, p_from : _c.int) -> _c.int,
    godot_array_find_last : #type proc "c" (p_self : ^Array, p_what : ^Variant) -> _c.int,
    godot_array_has : #type proc "c" (p_self : ^Array, p_value : ^Variant) -> Bool,
    godot_array_hash : #type proc "c" (p_self : ^Array) -> _c.int,
    godot_array_insert : #type proc "c" (p_self : ^Array, p_pos : _c.int, p_value : ^Variant),
    godot_array_invert : #type proc "c" (p_self : ^Array),
    godot_array_pop_back : #type proc "c" (p_self : ^Array) -> Variant,
    godot_array_pop_front : #type proc "c" (p_self : ^Array) -> Variant,
    godot_array_push_back : #type proc "c" (p_self : ^Array, p_value : ^Variant),
    godot_array_push_front : #type proc "c" (p_self : ^Array, p_value : ^Variant),
    godot_array_remove : #type proc "c" (p_self : ^Array, p_idx : _c.int),
    godot_array_resize : #type proc "c" (p_self : ^Array, p_size : _c.int),
    godot_array_rfind : #type proc "c" (p_self : ^Array, p_what : ^Variant, p_from : _c.int) -> _c.int,
    godot_array_size : #type proc "c" (p_self : ^Array) -> _c.int,
    godot_array_sort : #type proc "c" (p_self : ^Array),
    godot_array_sort_custom : #type proc "c" (p_self : ^Array, p_obj : rawptr, p_func : ^String),
    godot_array_bsearch : #type proc "c" (p_self : ^Array, p_value : ^Variant, p_before : Bool) -> _c.int,
    godot_array_bsearch_custom : #type proc "c" (p_self : ^Array, p_value : ^Variant, p_obj : rawptr, p_func : ^String, p_before : Bool) -> _c.int,
    godot_array_destroy : #type proc "c" (p_self : ^Array),
    godot_dictionary_new : #type proc "c" (r_dest : ^Dictionary),
    godot_dictionary_new_copy : #type proc "c" (r_dest : ^Dictionary, p_src : ^Dictionary),
    godot_dictionary_destroy : #type proc "c" (p_self : ^Dictionary),
    godot_dictionary_size : #type proc "c" (p_self : ^Dictionary) -> _c.int,
    godot_dictionary_empty : #type proc "c" (p_self : ^Dictionary) -> Bool,
    godot_dictionary_clear : #type proc "c" (p_self : ^Dictionary),
    godot_dictionary_has : #type proc "c" (p_self : ^Dictionary, p_key : ^Variant) -> Bool,
    godot_dictionary_has_all : #type proc "c" (p_self : ^Dictionary, p_keys : ^Array) -> Bool,
    godot_dictionary_erase : #type proc "c" (p_self : ^Dictionary, p_key : ^Variant),
    godot_dictionary_hash : #type proc "c" (p_self : ^Dictionary) -> _c.int,
    godot_dictionary_keys : #type proc "c" (p_self : ^Dictionary) -> Array,
    godot_dictionary_values : #type proc "c" (p_self : ^Dictionary) -> Array,
    godot_dictionary_get : #type proc "c" (p_self : ^Dictionary, p_key : ^Variant) -> Variant,
    godot_dictionary_set : #type proc "c" (p_self : ^Dictionary, p_key : ^Variant, p_value : ^Variant),
    godot_dictionary_operator_index : #type proc "c" (p_self : ^Dictionary, p_key : ^Variant) -> ^Variant,
    godot_dictionary_operator_index_const : #type proc "c" (p_self : ^Dictionary, p_key : ^Variant) -> ^Variant,
    godot_dictionary_next : #type proc "c" (p_self : ^Dictionary, p_key : ^Variant) -> ^Variant,
    godot_dictionary_operator_equal : #type proc "c" (p_self : ^Dictionary, p_b : ^Dictionary) -> Bool,
    godot_dictionary_to_json : #type proc "c" (p_self : ^Dictionary) -> String,
    godot_node_path_new : #type proc "c" (r_dest : ^NodePath, p_from : ^String),
    godot_node_path_new_copy : #type proc "c" (r_dest : ^NodePath, p_src : ^NodePath),
    godot_node_path_destroy : #type proc "c" (p_self : ^NodePath),
    godot_node_path_as_string : #type proc "c" (p_self : ^NodePath) -> String,
    godot_node_path_is_absolute : #type proc "c" (p_self : ^NodePath) -> Bool,
    godot_node_path_get_name_count : #type proc "c" (p_self : ^NodePath) -> _c.int,
    godot_node_path_get_name : #type proc "c" (p_self : ^NodePath, p_idx : _c.int) -> String,
    godot_node_path_get_subname_count : #type proc "c" (p_self : ^NodePath) -> _c.int,
    godot_node_path_get_subname : #type proc "c" (p_self : ^NodePath, p_idx : _c.int) -> String,
    godot_node_path_get_concatenated_subnames : #type proc "c" (p_self : ^NodePath) -> String,
    godot_node_path_is_empty : #type proc "c" (p_self : ^NodePath) -> Bool,
    godot_node_path_operator_equal : #type proc "c" (p_self : ^NodePath, p_b : ^NodePath) -> Bool,
    godot_plane_new_with_reals : #type proc "c" (r_dest : ^Plane, p_a : _c.float, p_b : _c.float, p_c : _c.float, p_d : _c.float),
    godot_plane_new_with_vectors : #type proc "c" (r_dest : ^Plane, p_v1 : ^Vector3, p_v2 : ^Vector3, p_v3 : ^Vector3),
    godot_plane_new_with_normal : #type proc "c" (r_dest : ^Plane, p_normal : ^Vector3, p_d : _c.float),
    godot_plane_as_string : #type proc "c" (p_self : ^Plane) -> String,
    godot_plane_normalized : #type proc "c" (p_self : ^Plane) -> Plane,
    godot_plane_center : #type proc "c" (p_self : ^Plane) -> Vector3,
    godot_plane_get_any_point : #type proc "c" (p_self : ^Plane) -> Vector3,
    godot_plane_is_point_over : #type proc "c" (p_self : ^Plane, p_point : ^Vector3) -> Bool,
    godot_plane_distance_to : #type proc "c" (p_self : ^Plane, p_point : ^Vector3) -> _c.float,
    godot_plane_has_point : #type proc "c" (p_self : ^Plane, p_point : ^Vector3, p_epsilon : _c.float) -> Bool,
    godot_plane_project : #type proc "c" (p_self : ^Plane, p_point : ^Vector3) -> Vector3,
    godot_plane_intersect_3 : #type proc "c" (p_self : ^Plane, r_dest : ^Vector3, p_b : ^Plane, p_c : ^Plane) -> Bool,
    godot_plane_intersects_ray : #type proc "c" (p_self : ^Plane, r_dest : ^Vector3, p_from : ^Vector3, p_dir : ^Vector3) -> Bool,
    godot_plane_intersects_segment : #type proc "c" (p_self : ^Plane, r_dest : ^Vector3, p_begin : ^Vector3, p_end : ^Vector3) -> Bool,
    godot_plane_operator_neg : #type proc "c" (p_self : ^Plane) -> Plane,
    godot_plane_operator_equal : #type proc "c" (p_self : ^Plane, p_b : ^Plane) -> Bool,
    godot_plane_set_normal : #type proc "c" (p_self : ^Plane, p_normal : ^Vector3),
    godot_plane_get_normal : #type proc "c" (p_self : ^Plane) -> Vector3,
    godot_plane_get_d : #type proc "c" (p_self : ^Plane) -> _c.float,
    godot_plane_set_d : #type proc "c" (p_self : ^Plane, p_d : _c.float),
    godot_rect2_new_with_position_and_size : #type proc "c" (r_dest : ^Rect2, p_pos : ^Vector2, p_size : ^Vector2),
    godot_rect2_new : #type proc "c" (r_dest : ^Rect2, p_x : _c.float, p_y : _c.float, p_width : _c.float, p_height : _c.float),
    godot_rect2_as_string : #type proc "c" (p_self : ^Rect2) -> String,
    godot_rect2_get_area : #type proc "c" (p_self : ^Rect2) -> _c.float,
    godot_rect2_intersects : #type proc "c" (p_self : ^Rect2, p_b : ^Rect2) -> Bool,
    godot_rect2_encloses : #type proc "c" (p_self : ^Rect2, p_b : ^Rect2) -> Bool,
    godot_rect2_has_no_area : #type proc "c" (p_self : ^Rect2) -> Bool,
    godot_rect2_clip : #type proc "c" (p_self : ^Rect2, p_b : ^Rect2) -> Rect2,
    godot_rect2_merge : #type proc "c" (p_self : ^Rect2, p_b : ^Rect2) -> Rect2,
    godot_rect2_has_point : #type proc "c" (p_self : ^Rect2, p_point : ^Vector2) -> Bool,
    godot_rect2_grow : #type proc "c" (p_self : ^Rect2, p_by : _c.float) -> Rect2,
    godot_rect2_expand : #type proc "c" (p_self : ^Rect2, p_to : ^Vector2) -> Rect2,
    godot_rect2_operator_equal : #type proc "c" (p_self : ^Rect2, p_b : ^Rect2) -> Bool,
    godot_rect2_get_position : #type proc "c" (p_self : ^Rect2) -> Vector2,
    godot_rect2_get_size : #type proc "c" (p_self : ^Rect2) -> Vector2,
    godot_rect2_set_position : #type proc "c" (p_self : ^Rect2, p_pos : ^Vector2),
    godot_rect2_set_size : #type proc "c" (p_self : ^Rect2, p_size : ^Vector2),
    godot_aabb_new : #type proc "c" (r_dest : ^Aabb, p_pos : ^Vector3, p_size : ^Vector3),
    godot_aabb_get_position : #type proc "c" (p_self : ^Aabb) -> Vector3,
    godot_aabb_set_position : #type proc "c" (p_self : ^Aabb, p_v : ^Vector3),
    godot_aabb_get_size : #type proc "c" (p_self : ^Aabb) -> Vector3,
    godot_aabb_set_size : #type proc "c" (p_self : ^Aabb, p_v : ^Vector3),
    godot_aabb_as_string : #type proc "c" (p_self : ^Aabb) -> String,
    godot_aabb_get_area : #type proc "c" (p_self : ^Aabb) -> _c.float,
    godot_aabb_has_no_area : #type proc "c" (p_self : ^Aabb) -> Bool,
    godot_aabb_has_no_surface : #type proc "c" (p_self : ^Aabb) -> Bool,
    godot_aabb_intersects : #type proc "c" (p_self : ^Aabb, p_with : ^Aabb) -> Bool,
    godot_aabb_encloses : #type proc "c" (p_self : ^Aabb, p_with : ^Aabb) -> Bool,
    godot_aabb_merge : #type proc "c" (p_self : ^Aabb, p_with : ^Aabb) -> Aabb,
    godot_aabb_intersection : #type proc "c" (p_self : ^Aabb, p_with : ^Aabb) -> Aabb,
    godot_aabb_intersects_plane : #type proc "c" (p_self : ^Aabb, p_plane : ^Plane) -> Bool,
    godot_aabb_intersects_segment : #type proc "c" (p_self : ^Aabb, p_from : ^Vector3, p_to : ^Vector3) -> Bool,
    godot_aabb_has_point : #type proc "c" (p_self : ^Aabb, p_point : ^Vector3) -> Bool,
    godot_aabb_get_support : #type proc "c" (p_self : ^Aabb, p_dir : ^Vector3) -> Vector3,
    godot_aabb_get_longest_axis : #type proc "c" (p_self : ^Aabb) -> Vector3,
    godot_aabb_get_longest_axis_index : #type proc "c" (p_self : ^Aabb) -> _c.int,
    godot_aabb_get_longest_axis_size : #type proc "c" (p_self : ^Aabb) -> _c.float,
    godot_aabb_get_shortest_axis : #type proc "c" (p_self : ^Aabb) -> Vector3,
    godot_aabb_get_shortest_axis_index : #type proc "c" (p_self : ^Aabb) -> _c.int,
    godot_aabb_get_shortest_axis_size : #type proc "c" (p_self : ^Aabb) -> _c.float,
    godot_aabb_expand : #type proc "c" (p_self : ^Aabb, p_to_point : ^Vector3) -> Aabb,
    godot_aabb_grow : #type proc "c" (p_self : ^Aabb, p_by : _c.float) -> Aabb,
    godot_aabb_get_endpoint : #type proc "c" (p_self : ^Aabb, p_idx : _c.int) -> Vector3,
    godot_aabb_operator_equal : #type proc "c" (p_self : ^Aabb, p_b : ^Aabb) -> Bool,
    godot_rid_new : #type proc "c" (r_dest : ^Rid),
    godot_rid_get_id : #type proc "c" (p_self : ^Rid) -> _c.int,
    godot_rid_new_with_resource : #type proc "c" (r_dest : ^Rid, p_from : rawptr),
    godot_rid_operator_equal : #type proc "c" (p_self : ^Rid, p_b : ^Rid) -> Bool,
    godot_rid_operator_less : #type proc "c" (p_self : ^Rid, p_b : ^Rid) -> Bool,
    godot_transform_new_with_axis_origin : #type proc "c" (r_dest : ^Transform, p_x_axis : ^Vector3, p_y_axis : ^Vector3, p_z_axis : ^Vector3, p_origin : ^Vector3),
    godot_transform_new : #type proc "c" (r_dest : ^Transform, p_basis : ^Basis, p_origin : ^Vector3),
    godot_transform_get_basis : #type proc "c" (p_self : ^Transform) -> Basis,
    godot_transform_set_basis : #type proc "c" (p_self : ^Transform, p_v : ^Basis),
    godot_transform_get_origin : #type proc "c" (p_self : ^Transform) -> Vector3,
    godot_transform_set_origin : #type proc "c" (p_self : ^Transform, p_v : ^Vector3),
    godot_transform_as_string : #type proc "c" (p_self : ^Transform) -> String,
    godot_transform_inverse : #type proc "c" (p_self : ^Transform) -> Transform,
    godot_transform_affine_inverse : #type proc "c" (p_self : ^Transform) -> Transform,
    godot_transform_orthonormalized : #type proc "c" (p_self : ^Transform) -> Transform,
    godot_transform_rotated : #type proc "c" (p_self : ^Transform, p_axis : ^Vector3, p_phi : _c.float) -> Transform,
    godot_transform_scaled : #type proc "c" (p_self : ^Transform, p_scale : ^Vector3) -> Transform,
    godot_transform_translated : #type proc "c" (p_self : ^Transform, p_ofs : ^Vector3) -> Transform,
    godot_transform_looking_at : #type proc "c" (p_self : ^Transform, p_target : ^Vector3, p_up : ^Vector3) -> Transform,
    godot_transform_xform_plane : #type proc "c" (p_self : ^Transform, p_v : ^Plane) -> Plane,
    godot_transform_xform_inv_plane : #type proc "c" (p_self : ^Transform, p_v : ^Plane) -> Plane,
    godot_transform_new_identity : #type proc "c" (r_dest : ^Transform),
    godot_transform_operator_equal : #type proc "c" (p_self : ^Transform, p_b : ^Transform) -> Bool,
    godot_transform_operator_multiply : #type proc "c" (p_self : ^Transform, p_b : ^Transform) -> Transform,
    godot_transform_xform_vector3 : #type proc "c" (p_self : ^Transform, p_v : ^Vector3) -> Vector3,
    godot_transform_xform_inv_vector3 : #type proc "c" (p_self : ^Transform, p_v : ^Vector3) -> Vector3,
    godot_transform_xform_aabb : #type proc "c" (p_self : ^Transform, p_v : ^Aabb) -> Aabb,
    godot_transform_xform_inv_aabb : #type proc "c" (p_self : ^Transform, p_v : ^Aabb) -> Aabb,
    godot_transform2d_new : #type proc "c" (r_dest : ^Transform2D, p_rot : _c.float, p_pos : ^Vector2),
    godot_transform2d_new_axis_origin : #type proc "c" (r_dest : ^Transform2D, p_x_axis : ^Vector2, p_y_axis : ^Vector2, p_origin : ^Vector2),
    godot_transform2d_as_string : #type proc "c" (p_self : ^Transform2D) -> String,
    godot_transform2d_inverse : #type proc "c" (p_self : ^Transform2D) -> Transform2D,
    godot_transform2d_affine_inverse : #type proc "c" (p_self : ^Transform2D) -> Transform2D,
    godot_transform2d_get_rotation : #type proc "c" (p_self : ^Transform2D) -> _c.float,
    godot_transform2d_get_origin : #type proc "c" (p_self : ^Transform2D) -> Vector2,
    godot_transform2d_get_scale : #type proc "c" (p_self : ^Transform2D) -> Vector2,
    godot_transform2d_orthonormalized : #type proc "c" (p_self : ^Transform2D) -> Transform2D,
    godot_transform2d_rotated : #type proc "c" (p_self : ^Transform2D, p_phi : _c.float) -> Transform2D,
    godot_transform2d_scaled : #type proc "c" (p_self : ^Transform2D, p_scale : ^Vector2) -> Transform2D,
    godot_transform2d_translated : #type proc "c" (p_self : ^Transform2D, p_offset : ^Vector2) -> Transform2D,
    godot_transform2d_xform_vector2 : #type proc "c" (p_self : ^Transform2D, p_v : ^Vector2) -> Vector2,
    godot_transform2d_xform_inv_vector2 : #type proc "c" (p_self : ^Transform2D, p_v : ^Vector2) -> Vector2,
    godot_transform2d_basis_xform_vector2 : #type proc "c" (p_self : ^Transform2D, p_v : ^Vector2) -> Vector2,
    godot_transform2d_basis_xform_inv_vector2 : #type proc "c" (p_self : ^Transform2D, p_v : ^Vector2) -> Vector2,
    godot_transform2d_interpolate_with : #type proc "c" (p_self : ^Transform2D, p_m : ^Transform2D, p_c : _c.float) -> Transform2D,
    godot_transform2d_operator_equal : #type proc "c" (p_self : ^Transform2D, p_b : ^Transform2D) -> Bool,
    godot_transform2d_operator_multiply : #type proc "c" (p_self : ^Transform2D, p_b : ^Transform2D) -> Transform2D,
    godot_transform2d_new_identity : #type proc "c" (r_dest : ^Transform2D),
    godot_transform2d_xform_rect2 : #type proc "c" (p_self : ^Transform2D, p_v : ^Rect2) -> Rect2,
    godot_transform2d_xform_inv_rect2 : #type proc "c" (p_self : ^Transform2D, p_v : ^Rect2) -> Rect2,
    godot_variant_get_type : #type proc "c" (p_v : ^Variant) -> VariantType,
    godot_variant_new_copy : #type proc "c" (r_dest : ^Variant, p_src : ^Variant),
    godot_variant_new_nil : #type proc "c" (r_dest : ^Variant),
    godot_variant_new_bool : #type proc "c" (r_dest : ^Variant, p_b : Bool),
    godot_variant_new_uint : #type proc "c" (r_dest : ^Variant, p_i : u64),
    godot_variant_new_int : #type proc "c" (r_dest : ^Variant, p_i : i64),
    godot_variant_new_real : #type proc "c" (r_dest : ^Variant, p_r : _c.double),
    godot_variant_new_string : #type proc "c" (r_dest : ^Variant, p_s : ^String),
    godot_variant_new_vector2 : #type proc "c" (r_dest : ^Variant, p_v2 : ^Vector2),
    godot_variant_new_rect2 : #type proc "c" (r_dest : ^Variant, p_rect2 : ^Rect2),
    godot_variant_new_vector3 : #type proc "c" (r_dest : ^Variant, p_v3 : ^Vector3),
    godot_variant_new_transform2d : #type proc "c" (r_dest : ^Variant, p_t2d : ^Transform2D),
    godot_variant_new_plane : #type proc "c" (r_dest : ^Variant, p_plane : ^Plane),
    godot_variant_new_quat : #type proc "c" (r_dest : ^Variant, p_quat : ^Quat),
    godot_variant_new_aabb : #type proc "c" (r_dest : ^Variant, p_aabb : ^Aabb),
    godot_variant_new_basis : #type proc "c" (r_dest : ^Variant, p_basis : ^Basis),
    godot_variant_new_transform : #type proc "c" (r_dest : ^Variant, p_trans : ^Transform),
    godot_variant_new_color : #type proc "c" (r_dest : ^Variant, p_color : ^Color),
    godot_variant_new_node_path : #type proc "c" (r_dest : ^Variant, p_np : ^NodePath),
    godot_variant_new_rid : #type proc "c" (r_dest : ^Variant, p_rid : ^Rid),
    godot_variant_new_object : #type proc "c" (r_dest : ^Variant, p_obj : rawptr),
    godot_variant_new_dictionary : #type proc "c" (r_dest : ^Variant, p_dict : ^Dictionary),
    godot_variant_new_array : #type proc "c" (r_dest : ^Variant, p_arr : ^Array),
    godot_variant_new_pool_byte_array : #type proc "c" (r_dest : ^Variant, p_pba : ^PoolByteArray),
    godot_variant_new_pool_int_array : #type proc "c" (r_dest : ^Variant, p_pia : ^PoolIntArray),
    godot_variant_new_pool_real_array : #type proc "c" (r_dest : ^Variant, p_pra : ^PoolRealArray),
    godot_variant_new_pool_string_array : #type proc "c" (r_dest : ^Variant, p_psa : ^PoolStringArray),
    godot_variant_new_pool_vector2_array : #type proc "c" (r_dest : ^Variant, p_pv2a : ^PoolVector2Array),
    godot_variant_new_pool_vector3_array : #type proc "c" (r_dest : ^Variant, p_pv3a : ^PoolVector3Array),
    godot_variant_new_pool_color_array : #type proc "c" (r_dest : ^Variant, p_pca : ^PoolColorArray),
    godot_variant_as_bool : #type proc "c" (p_self : ^Variant) -> Bool,
    godot_variant_as_uint : #type proc "c" (p_self : ^Variant) -> u64,
    godot_variant_as_int : #type proc "c" (p_self : ^Variant) -> i64,
    godot_variant_as_real : #type proc "c" (p_self : ^Variant) -> _c.double,
    godot_variant_as_string : #type proc "c" (p_self : ^Variant) -> String,
    godot_variant_as_vector2 : #type proc "c" (p_self : ^Variant) -> Vector2,
    godot_variant_as_rect2 : #type proc "c" (p_self : ^Variant) -> Rect2,
    godot_variant_as_vector3 : #type proc "c" (p_self : ^Variant) -> Vector3,
    godot_variant_as_transform2d : #type proc "c" (p_self : ^Variant) -> Transform2D,
    godot_variant_as_plane : #type proc "c" (p_self : ^Variant) -> Plane,
    godot_variant_as_quat : #type proc "c" (p_self : ^Variant) -> Quat,
    godot_variant_as_aabb : #type proc "c" (p_self : ^Variant) -> Aabb,
    godot_variant_as_basis : #type proc "c" (p_self : ^Variant) -> Basis,
    godot_variant_as_transform : #type proc "c" (p_self : ^Variant) -> Transform,
    godot_variant_as_color : #type proc "c" (p_self : ^Variant) -> Color,
    godot_variant_as_node_path : #type proc "c" (p_self : ^Variant) -> NodePath,
    godot_variant_as_rid : #type proc "c" (p_self : ^Variant) -> Rid,
    godot_variant_as_object : #type proc "c" (p_self : ^Variant) -> rawptr,
    godot_variant_as_dictionary : #type proc "c" (p_self : ^Variant) -> Dictionary,
    godot_variant_as_array : #type proc "c" (p_self : ^Variant) -> Array,
    godot_variant_as_pool_byte_array : #type proc "c" (p_self : ^Variant) -> PoolByteArray,
    godot_variant_as_pool_int_array : #type proc "c" (p_self : ^Variant) -> PoolIntArray,
    godot_variant_as_pool_real_array : #type proc "c" (p_self : ^Variant) -> PoolRealArray,
    godot_variant_as_pool_string_array : #type proc "c" (p_self : ^Variant) -> PoolStringArray,
    godot_variant_as_pool_vector2_array : #type proc "c" (p_self : ^Variant) -> PoolVector2Array,
    godot_variant_as_pool_vector3_array : #type proc "c" (p_self : ^Variant) -> PoolVector3Array,
    godot_variant_as_pool_color_array : #type proc "c" (p_self : ^Variant) -> PoolColorArray,
    godot_variant_call : #type proc "c" (p_self : ^Variant, p_method : ^String, p_args : ^^Variant, p_argcount : _c.int, r_error : ^VariantCallError) -> Variant,
    godot_variant_has_method : #type proc "c" (p_self : ^Variant, p_method : ^String) -> Bool,
    godot_variant_operator_equal : #type proc "c" (p_self : ^Variant, p_other : ^Variant) -> Bool,
    godot_variant_operator_less : #type proc "c" (p_self : ^Variant, p_other : ^Variant) -> Bool,
    godot_variant_hash_compare : #type proc "c" (p_self : ^Variant, p_other : ^Variant) -> Bool,
    godot_variant_booleanize : #type proc "c" (p_self : ^Variant) -> Bool,
    godot_variant_destroy : #type proc "c" (p_self : ^Variant),
    godot_char_string_length : #type proc "c" (p_cs : ^CharString) -> _c.int,
    godot_char_string_get_data : #type proc "c" (p_cs : ^CharString) -> cstring,
    godot_char_string_destroy : #type proc "c" (p_cs : ^CharString),
    godot_string_new : #type proc "c" (r_dest : ^String),
    godot_string_new_copy : #type proc "c" (r_dest : ^String, p_src : ^String),
    godot_string_new_with_wide_string : #type proc "c" (r_dest : ^String, p_contents : ^_c.wchar_t, p_size : _c.int),
    godot_string_operator_index : #type proc "c" (p_self : ^String, p_idx : _c.int) -> ^_c.wchar_t,
    godot_string_operator_index_const : #type proc "c" (p_self : ^String, p_idx : _c.int) -> _c.wchar_t,
    godot_string_wide_str : #type proc "c" (p_self : ^String) -> ^_c.wchar_t,
    godot_string_operator_equal : #type proc "c" (p_self : ^String, p_b : ^String) -> Bool,
    godot_string_operator_less : #type proc "c" (p_self : ^String, p_b : ^String) -> Bool,
    godot_string_operator_plus : #type proc "c" (p_self : ^String, p_b : ^String) -> String,
    godot_string_length : #type proc "c" (p_self : ^String) -> _c.int,
    godot_string_casecmp_to : #type proc "c" (p_self : ^String, p_str : ^String) -> _c.schar,
    godot_string_nocasecmp_to : #type proc "c" (p_self : ^String, p_str : ^String) -> _c.schar,
    godot_string_naturalnocasecmp_to : #type proc "c" (p_self : ^String, p_str : ^String) -> _c.schar,
    godot_string_begins_with : #type proc "c" (p_self : ^String, p_string : ^String) -> Bool,
    godot_string_begins_with_char_array : #type proc "c" (p_self : ^String, p_char_array : cstring) -> Bool,
    godot_string_bigrams : #type proc "c" (p_self : ^String) -> Array,
    godot_string_chr : #type proc "c" (p_character : _c.wchar_t) -> String,
    godot_string_ends_with : #type proc "c" (p_self : ^String, p_string : ^String) -> Bool,
    godot_string_find : #type proc "c" (p_self : ^String, p_what : String) -> _c.int,
    godot_string_find_from : #type proc "c" (p_self : ^String, p_what : String, p_from : _c.int) -> _c.int,
    godot_string_findmk : #type proc "c" (p_self : ^String, p_keys : ^Array) -> _c.int,
    godot_string_findmk_from : #type proc "c" (p_self : ^String, p_keys : ^Array, p_from : _c.int) -> _c.int,
    godot_string_findmk_from_in_place : #type proc "c" (p_self : ^String, p_keys : ^Array, p_from : _c.int, r_key : ^_c.int) -> _c.int,
    godot_string_findn : #type proc "c" (p_self : ^String, p_what : String) -> _c.int,
    godot_string_findn_from : #type proc "c" (p_self : ^String, p_what : String, p_from : _c.int) -> _c.int,
    godot_string_find_last : #type proc "c" (p_self : ^String, p_what : String) -> _c.int,
    godot_string_format : #type proc "c" (p_self : ^String, p_values : ^Variant) -> String,
    godot_string_format_with_custom_placeholder : #type proc "c" (p_self : ^String, p_values : ^Variant, p_placeholder : cstring) -> String,
    godot_string_hex_encode_buffer : #type proc "c" (p_buffer : ^u8, p_len : _c.int) -> String,
    godot_string_hex_to_int : #type proc "c" (p_self : ^String) -> _c.int,
    godot_string_hex_to_int_without_prefix : #type proc "c" (p_self : ^String) -> _c.int,
    godot_string_insert : #type proc "c" (p_self : ^String, p_at_pos : _c.int, p_string : String) -> String,
    godot_string_is_numeric : #type proc "c" (p_self : ^String) -> Bool,
    godot_string_is_subsequence_of : #type proc "c" (p_self : ^String, p_string : ^String) -> Bool,
    godot_string_is_subsequence_ofi : #type proc "c" (p_self : ^String, p_string : ^String) -> Bool,
    godot_string_lpad : #type proc "c" (p_self : ^String, p_min_length : _c.int) -> String,
    godot_string_lpad_with_custom_character : #type proc "c" (p_self : ^String, p_min_length : _c.int, p_character : ^String) -> String,
    godot_string_match : #type proc "c" (p_self : ^String, p_wildcard : ^String) -> Bool,
    godot_string_matchn : #type proc "c" (p_self : ^String, p_wildcard : ^String) -> Bool,
    godot_string_md5 : #type proc "c" (p_md5 : ^u8) -> String,
    godot_string_num : #type proc "c" (p_num : _c.double) -> String,
    godot_string_num_int64 : #type proc "c" (p_num : i64, p_base : _c.int) -> String,
    godot_string_num_int64_capitalized : #type proc "c" (p_num : i64, p_base : _c.int, p_capitalize_hex : Bool) -> String,
    godot_string_num_real : #type proc "c" (p_num : _c.double) -> String,
    godot_string_num_scientific : #type proc "c" (p_num : _c.double) -> String,
    godot_string_num_with_decimals : #type proc "c" (p_num : _c.double, p_decimals : _c.int) -> String,
    godot_string_pad_decimals : #type proc "c" (p_self : ^String, p_digits : _c.int) -> String,
    godot_string_pad_zeros : #type proc "c" (p_self : ^String, p_digits : _c.int) -> String,
    godot_string_replace_first : #type proc "c" (p_self : ^String, p_key : String, p_with : String) -> String,
    godot_string_replace : #type proc "c" (p_self : ^String, p_key : String, p_with : String) -> String,
    godot_string_replacen : #type proc "c" (p_self : ^String, p_key : String, p_with : String) -> String,
    godot_string_rfind : #type proc "c" (p_self : ^String, p_what : String) -> _c.int,
    godot_string_rfindn : #type proc "c" (p_self : ^String, p_what : String) -> _c.int,
    godot_string_rfind_from : #type proc "c" (p_self : ^String, p_what : String, p_from : _c.int) -> _c.int,
    godot_string_rfindn_from : #type proc "c" (p_self : ^String, p_what : String, p_from : _c.int) -> _c.int,
    godot_string_rpad : #type proc "c" (p_self : ^String, p_min_length : _c.int) -> String,
    godot_string_rpad_with_custom_character : #type proc "c" (p_self : ^String, p_min_length : _c.int, p_character : ^String) -> String,
    godot_string_similarity : #type proc "c" (p_self : ^String, p_string : ^String) -> _c.float,
    godot_string_sprintf : #type proc "c" (p_self : ^String, p_values : ^Array, p_error : ^Bool) -> String,
    godot_string_substr : #type proc "c" (p_self : ^String, p_from : _c.int, p_chars : _c.int) -> String,
    godot_string_to_double : #type proc "c" (p_self : ^String) -> _c.double,
    godot_string_to_float : #type proc "c" (p_self : ^String) -> _c.float,
    godot_string_to_int : #type proc "c" (p_self : ^String) -> _c.int,
    godot_string_camelcase_to_underscore : #type proc "c" (p_self : ^String) -> String,
    godot_string_camelcase_to_underscore_lowercased : #type proc "c" (p_self : ^String) -> String,
    godot_string_capitalize : #type proc "c" (p_self : ^String) -> String,
    godot_string_char_to_double : #type proc "c" (p_what : cstring) -> _c.double,
    godot_string_char_to_int : #type proc "c" (p_what : cstring) -> _c.int,
    godot_string_wchar_to_int : #type proc "c" (p_str : ^_c.wchar_t) -> i64,
    godot_string_char_to_int_with_len : #type proc "c" (p_what : cstring, p_len : _c.int) -> _c.int,
    godot_string_char_to_int64_with_len : #type proc "c" (p_str : ^_c.wchar_t, p_len : _c.int) -> i64,
    godot_string_hex_to_int64 : #type proc "c" (p_self : ^String) -> i64,
    godot_string_hex_to_int64_with_prefix : #type proc "c" (p_self : ^String) -> i64,
    godot_string_to_int64 : #type proc "c" (p_self : ^String) -> i64,
    godot_string_unicode_char_to_double : #type proc "c" (p_str : ^_c.wchar_t, r_end : ^^_c.wchar_t) -> _c.double,
    godot_string_get_slice_count : #type proc "c" (p_self : ^String, p_splitter : String) -> _c.int,
    godot_string_get_slice : #type proc "c" (p_self : ^String, p_splitter : String, p_slice : _c.int) -> String,
    godot_string_get_slicec : #type proc "c" (p_self : ^String, p_splitter : _c.wchar_t, p_slice : _c.int) -> String,
    godot_string_split : #type proc "c" (p_self : ^String, p_splitter : ^String) -> Array,
    godot_string_split_allow_empty : #type proc "c" (p_self : ^String, p_splitter : ^String) -> Array,
    godot_string_split_floats : #type proc "c" (p_self : ^String, p_splitter : ^String) -> Array,
    godot_string_split_floats_allows_empty : #type proc "c" (p_self : ^String, p_splitter : ^String) -> Array,
    godot_string_split_floats_mk : #type proc "c" (p_self : ^String, p_splitters : ^Array) -> Array,
    godot_string_split_floats_mk_allows_empty : #type proc "c" (p_self : ^String, p_splitters : ^Array) -> Array,
    godot_string_split_ints : #type proc "c" (p_self : ^String, p_splitter : ^String) -> Array,
    godot_string_split_ints_allows_empty : #type proc "c" (p_self : ^String, p_splitter : ^String) -> Array,
    godot_string_split_ints_mk : #type proc "c" (p_self : ^String, p_splitters : ^Array) -> Array,
    godot_string_split_ints_mk_allows_empty : #type proc "c" (p_self : ^String, p_splitters : ^Array) -> Array,
    godot_string_split_spaces : #type proc "c" (p_self : ^String) -> Array,
    godot_string_char_lowercase : #type proc "c" (p_char : _c.wchar_t) -> _c.wchar_t,
    godot_string_char_uppercase : #type proc "c" (p_char : _c.wchar_t) -> _c.wchar_t,
    godot_string_to_lower : #type proc "c" (p_self : ^String) -> String,
    godot_string_to_upper : #type proc "c" (p_self : ^String) -> String,
    godot_string_get_basename : #type proc "c" (p_self : ^String) -> String,
    godot_string_get_extension : #type proc "c" (p_self : ^String) -> String,
    godot_string_left : #type proc "c" (p_self : ^String, p_pos : _c.int) -> String,
    godot_string_ord_at : #type proc "c" (p_self : ^String, p_idx : _c.int) -> _c.wchar_t,
    godot_string_plus_file : #type proc "c" (p_self : ^String, p_file : ^String) -> String,
    godot_string_right : #type proc "c" (p_self : ^String, p_pos : _c.int) -> String,
    godot_string_strip_edges : #type proc "c" (p_self : ^String, p_left : Bool, p_right : Bool) -> String,
    godot_string_strip_escapes : #type proc "c" (p_self : ^String) -> String,
    godot_string_erase : #type proc "c" (p_self : ^String, p_pos : _c.int, p_chars : _c.int),
    godot_string_ascii : #type proc "c" (p_self : ^String) -> CharString,
    godot_string_ascii_extended : #type proc "c" (p_self : ^String) -> CharString,
    godot_string_utf8 : #type proc "c" (p_self : ^String) -> CharString,
    godot_string_parse_utf8 : #type proc "c" (p_self : ^String, p_utf8 : cstring) -> Bool,
    godot_string_parse_utf8_with_len : #type proc "c" (p_self : ^String, p_utf8 : cstring, p_len : _c.int) -> Bool,
    godot_string_chars_to_utf8 : #type proc "c" (p_utf8 : cstring) -> String,
    godot_string_chars_to_utf8_with_len : #type proc "c" (p_utf8 : cstring, p_len : _c.int) -> String,
    godot_string_hash : #type proc "c" (p_self : ^String) -> u32,
    godot_string_hash64 : #type proc "c" (p_self : ^String) -> u64,
    godot_string_hash_chars : #type proc "c" (p_cstr : cstring) -> u32,
    godot_string_hash_chars_with_len : #type proc "c" (p_cstr : cstring, p_len : _c.int) -> u32,
    godot_string_hash_utf8_chars : #type proc "c" (p_str : ^_c.wchar_t) -> u32,
    godot_string_hash_utf8_chars_with_len : #type proc "c" (p_str : ^_c.wchar_t, p_len : _c.int) -> u32,
    godot_string_md5_buffer : #type proc "c" (p_self : ^String) -> PoolByteArray,
    godot_string_md5_text : #type proc "c" (p_self : ^String) -> String,
    godot_string_sha256_buffer : #type proc "c" (p_self : ^String) -> PoolByteArray,
    godot_string_sha256_text : #type proc "c" (p_self : ^String) -> String,
    godot_string_empty : #type proc "c" (p_self : ^String) -> Bool,
    godot_string_get_base_dir : #type proc "c" (p_self : ^String) -> String,
    godot_string_get_file : #type proc "c" (p_self : ^String) -> String,
    godot_string_humanize_size : #type proc "c" (p_size : u64) -> String,
    godot_string_is_abs_path : #type proc "c" (p_self : ^String) -> Bool,
    godot_string_is_rel_path : #type proc "c" (p_self : ^String) -> Bool,
    godot_string_is_resource_file : #type proc "c" (p_self : ^String) -> Bool,
    godot_string_path_to : #type proc "c" (p_self : ^String, p_path : ^String) -> String,
    godot_string_path_to_file : #type proc "c" (p_self : ^String, p_path : ^String) -> String,
    godot_string_simplify_path : #type proc "c" (p_self : ^String) -> String,
    godot_string_c_escape : #type proc "c" (p_self : ^String) -> String,
    godot_string_c_escape_multiline : #type proc "c" (p_self : ^String) -> String,
    godot_string_c_unescape : #type proc "c" (p_self : ^String) -> String,
    godot_string_http_escape : #type proc "c" (p_self : ^String) -> String,
    godot_string_http_unescape : #type proc "c" (p_self : ^String) -> String,
    godot_string_json_escape : #type proc "c" (p_self : ^String) -> String,
    godot_string_word_wrap : #type proc "c" (p_self : ^String, p_chars_per_line : _c.int) -> String,
    godot_string_xml_escape : #type proc "c" (p_self : ^String) -> String,
    godot_string_xml_escape_with_quotes : #type proc "c" (p_self : ^String) -> String,
    godot_string_xml_unescape : #type proc "c" (p_self : ^String) -> String,
    godot_string_percent_decode : #type proc "c" (p_self : ^String) -> String,
    godot_string_percent_encode : #type proc "c" (p_self : ^String) -> String,
    godot_string_is_valid_float : #type proc "c" (p_self : ^String) -> Bool,
    godot_string_is_valid_hex_number : #type proc "c" (p_self : ^String, p_with_prefix : Bool) -> Bool,
    godot_string_is_valid_html_color : #type proc "c" (p_self : ^String) -> Bool,
    godot_string_is_valid_identifier : #type proc "c" (p_self : ^String) -> Bool,
    godot_string_is_valid_integer : #type proc "c" (p_self : ^String) -> Bool,
    godot_string_is_valid_ip_address : #type proc "c" (p_self : ^String) -> Bool,
    godot_string_destroy : #type proc "c" (p_self : ^String),
    godot_string_name_new : #type proc "c" (r_dest : ^StringName, p_name : ^String),
    godot_string_name_new_data : #type proc "c" (r_dest : ^StringName, p_name : cstring),
    godot_string_name_get_name : #type proc "c" (p_self : ^StringName) -> String,
    godot_string_name_get_hash : #type proc "c" (p_self : ^StringName) -> u32,
    godot_string_name_get_data_unique_pointer : #type proc "c" (p_self : ^StringName) -> rawptr,
    godot_string_name_operator_equal : #type proc "c" (p_self : ^StringName, p_other : ^StringName) -> Bool,
    godot_string_name_operator_less : #type proc "c" (p_self : ^StringName, p_other : ^StringName) -> Bool,
    godot_string_name_destroy : #type proc "c" (p_self : ^StringName),
    godot_object_destroy : #type proc "c" (p_o : rawptr),
    godot_global_get_singleton : #type proc "c" (p_name : cstring) -> rawptr,
    godot_method_bind_get_method : #type proc "c" (p_classname : cstring, p_methodname : cstring) -> ^MethodBind,
    godot_method_bind_ptrcall : #type proc "c" (p_method_bind : ^MethodBind, p_instance : rawptr, p_args : ^rawptr, p_ret : rawptr),
    godot_method_bind_call : #type proc "c" (p_method_bind : ^MethodBind, p_instance : rawptr, p_args : ^^Variant, p_arg_count : _c.int, p_call_error : ^VariantCallError) -> Variant,
    godot_get_class_constructor : #type proc "c" (p_classname : cstring) -> ClassConstructor,
    godot_get_global_constants : #type proc "c" () -> Dictionary,
    godot_register_native_call_type : #type proc "c" (call_type : cstring, p_callback : NativeCallCb),
    godot_alloc : #type proc "c" (p_bytes : _c.int) -> rawptr,
    godot_realloc : #type proc "c" (p_ptr : rawptr, p_bytes : _c.int) -> rawptr,
    godot_free : #type proc "c" (p_ptr : rawptr),
    godot_print_error : #type proc "c" (p_description : cstring, p_function : cstring, p_file : cstring, p_line : _c.int),
    godot_print_warning : #type proc "c" (p_description : cstring, p_function : cstring, p_file : cstring, p_line : _c.int),
    godot_print : #type proc "c" (p_message : ^String),
};

GdnativeInitOptions :: struct {
    in_editor : Bool,
    core_api_hash : u64,
    editor_api_hash : u64,
    no_api_hash : u64,
    report_version_mismatch : #type proc "c" (p_library : rawptr, p_what : cstring, p_want : GdnativeApiVersion, p_have : GdnativeApiVersion),
    report_loading_error : #type proc "c" (p_library : rawptr, p_what : cstring),
    gd_native_library : rawptr,
    api_struct : ^GdnativeCoreApiStruct,
    active_library_path : ^String,
};

GdnativeTerminateOptions :: struct {
    in_editor : Bool,
};

NodePath :: struct {
    dont_touch_that : [1]u8,
};

Plane :: struct {
    dont_touch_that : [16]u8,
};

PoolArrayReadAccess :: struct {
    dont_touch_that : [1]u8,
};

PoolArrayWriteAccess :: struct {
    dont_touch_that : [1]u8,
};

PoolByteArray :: struct {
    dont_touch_that : [1]u8,
};

PoolIntArray :: struct {
    dont_touch_that : [1]u8,
};

PoolRealArray :: struct {
    dont_touch_that : [1]u8,
};

PoolStringArray :: struct {
    dont_touch_that : [1]u8,
};

PoolVector2Array :: struct {
    dont_touch_that : [1]u8,
};

PoolVector3Array :: struct {
    dont_touch_that : [1]u8,
};

PoolColorArray :: struct {
    dont_touch_that : [1]u8,
};

Quat :: struct {
    dont_touch_that : [16]u8,
};

Rect2 :: struct {
    dont_touch_that : [16]u8,
};

Rid :: struct {
    dont_touch_that : [1]u8,
};

StringName :: struct {
    dont_touch_that : [1]u8,
};

String :: struct {
    dont_touch_that : [1]u8,
};

CharString :: struct {
    dont_touch_that : [1]u8,
};

Transform2D :: struct {
    dont_touch_that : [24]u8,
};

Transform :: struct {
    dont_touch_that : [48]u8,
};

Variant :: struct {
    dont_touch_that : [17]u8,
};

VariantCallError :: struct {
    error : VariantCallErrorError,
    argument : _c.int,
    expected : VariantType,
};

Vector2 :: struct {
    dont_touch_that : [8]u8,
};

Vector3 :: struct {
    dont_touch_that : [12]u8,
};

GdnativeExtNativescript1_1ApiStruct :: struct {
    type : _c.uint,
    version : GdnativeApiVersion,
    next : ^GdnativeApiStruct,
    godot_nativescript_set_method_argument_information : #type proc "c" (p_gdnative_handle : rawptr, p_name : cstring, p_function_name : cstring, p_num_args : _c.int, p_args : ^MethodArg),
    godot_nativescript_set_class_documentation : #type proc "c" (p_gdnative_handle : rawptr, p_name : cstring, p_documentation : String),
    godot_nativescript_set_method_documentation : #type proc "c" (p_gdnative_handle : rawptr, p_name : cstring, p_function_name : cstring, p_documentation : String),
    godot_nativescript_set_property_documentation : #type proc "c" (p_gdnative_handle : rawptr, p_name : cstring, p_path : cstring, p_documentation : String),
    godot_nativescript_set_signal_documentation : #type proc "c" (p_gdnative_handle : rawptr, p_name : cstring, p_signal_name : cstring, p_documentation : String),
    godot_nativescript_set_global_type_tag : #type proc "c" (p_idx : _c.int, p_name : cstring, p_type_tag : rawptr),
    godot_nativescript_get_global_type_tag : #type proc "c" (p_idx : _c.int, p_name : cstring) -> rawptr,
    godot_nativescript_set_type_tag : #type proc "c" (p_gdnative_handle : rawptr, p_name : cstring, p_type_tag : rawptr),
    godot_nativescript_get_type_tag : #type proc "c" (p_object : rawptr) -> rawptr,
    godot_nativescript_register_instance_binding_data_functions : #type proc "c" (p_binding_functions : InstanceBindingFunctions) -> _c.int,
    godot_nativescript_unregister_instance_binding_data_functions : #type proc "c" (p_idx : _c.int),
    godot_nativescript_get_instance_binding_data : #type proc "c" (p_idx : _c.int, p_object : rawptr) -> rawptr,
    godot_nativescript_profiling_add_data : #type proc "c" (p_signature : cstring, p_line : u64),
};

GdnativeExtNativescriptApiStruct :: struct {
    type : _c.uint,
    version : GdnativeApiVersion,
    next : ^GdnativeApiStruct,
    godot_nativescript_register_class : #type proc "c" (p_gdnative_handle : rawptr, p_name : cstring, p_base : cstring, p_create_func : InstanceCreateFunc, p_destroy_func : InstanceDestroyFunc),
    godot_nativescript_register_tool_class : #type proc "c" (p_gdnative_handle : rawptr, p_name : cstring, p_base : cstring, p_create_func : InstanceCreateFunc, p_destroy_func : InstanceDestroyFunc),
    godot_nativescript_register_method : #type proc "c" (p_gdnative_handle : rawptr, p_name : cstring, p_function_name : cstring, p_attr : MethodAttributes, p_method : InstanceMethod),
    godot_nativescript_register_property : #type proc "c" (p_gdnative_handle : rawptr, p_name : cstring, p_path : cstring, p_attr : ^PropertyAttributes, p_set_func : PropertySetFunc, p_get_func : PropertyGetFunc),
    godot_nativescript_register_signal : #type proc "c" (p_gdnative_handle : rawptr, p_name : cstring, p_signal : ^Signal),
    godot_nativescript_get_userdata : #type proc "c" (p_instance : rawptr) -> rawptr,
};

GdnativeExtPluginscriptApiStruct :: struct {
    type : _c.uint,
    version : GdnativeApiVersion,
    next : ^GdnativeApiStruct,
    godot_pluginscript_register_language : #type proc "c" (language_desc : ^PluginscriptLanguageDesc),
};

GdnativeExtAndroidApiStruct :: struct {
    type : _c.uint,
    version : GdnativeApiVersion,
    next : ^GdnativeApiStruct,
    godot_android_get_env : #type proc "c" () -> rawptr,
    godot_android_get_activity : #type proc "c" () -> rawptr,
    godot_android_get_surface : #type proc "c" () -> rawptr,
    godot_android_is_activity_resumed : #type proc "c" () -> Bool,
};

GdnativeExtArvr1_2ApiStruct :: struct {
    type : _c.uint,
    version : GdnativeApiVersion,
    next : ^GdnativeApiStruct,
    godot_arvr_set_interface : #type proc "c" (p_arvr_interface : rawptr, p_gdn_interface : ^ArvrInterfaceGdnative),
    godot_arvr_get_depthid : #type proc "c" (p_render_target : ^Rid) -> _c.int,
};

GdnativeExtArvrApiStruct :: struct {
    type : _c.uint,
    version : GdnativeApiVersion,
    next : ^GdnativeApiStruct,
    godot_arvr_register_interface : #type proc "c" (p_interface : ^ArvrInterfaceGdnative),
    godot_arvr_get_worldscale : #type proc "c" () -> _c.float,
    godot_arvr_get_reference_frame : #type proc "c" () -> Transform,
    godot_arvr_blit : #type proc "c" (p_eye : _c.int, p_render_target : ^Rid, p_screen_rect : ^Rect2),
    godot_arvr_get_texid : #type proc "c" (p_render_target : ^Rid) -> _c.int,
    godot_arvr_add_controller : #type proc "c" (p_device_name : cstring, p_hand : _c.int, p_tracks_orientation : Bool, p_tracks_position : Bool) -> _c.int,
    godot_arvr_remove_controller : #type proc "c" (p_controller_id : _c.int),
    godot_arvr_set_controller_transform : #type proc "c" (p_controller_id : _c.int, p_transform : ^Transform, p_tracks_orientation : Bool, p_tracks_position : Bool),
    godot_arvr_set_controller_button : #type proc "c" (p_controller_id : _c.int, p_button : _c.int, p_is_pressed : Bool),
    godot_arvr_set_controller_axis : #type proc "c" (p_controller_id : _c.int, p_exis : _c.int, p_value : _c.float, p_can_be_negative : Bool),
    godot_arvr_get_controller_rumble : #type proc "c" (p_controller_id : _c.int) -> _c.float,
};

GdnativeExtVideodecoderApiStruct :: struct {
    type : _c.uint,
    version : GdnativeApiVersion,
    next : ^GdnativeApiStruct,
    godot_videodecoder_file_read : #type proc "c" (file_ptr : rawptr, buf : ^u8, buf_size : _c.int) -> _c.int,
    godot_videodecoder_file_seek : #type proc "c" (file_ptr : rawptr, pos : i64, whence : _c.int) -> i64,
    godot_videodecoder_register_decoder : #type proc "c" (p_interface : ^VideodecoderInterfaceGdnative),
};

GdnativeExtNet3_2ApiStruct :: struct {
    type : _c.uint,
    version : GdnativeApiVersion,
    next : ^GdnativeApiStruct,
    godot_net_set_webrtc_library : #type proc "c" (p_library : ^NetWebrtcLibrary) -> Error,
    godot_net_bind_webrtc_peer_connection : #type proc "c" (p_obj : rawptr, p_interface : ^NetWebrtcPeerConnection),
    godot_net_bind_webrtc_data_channel : #type proc "c" (p_obj : rawptr, p_interface : ^NetWebrtcDataChannel),
};

GdnativeExtNetApiStruct :: struct {
    type : _c.uint,
    version : GdnativeApiVersion,
    next : ^GdnativeApiStruct,
    godot_net_bind_stream_peer : #type proc "c" (p_obj : rawptr, p_interface : ^NetStreamPeer),
    godot_net_bind_packet_peer : #type proc "c" (p_obj : rawptr, p_interface : ^NetPacketPeer),
    godot_net_bind_multiplayer_peer : #type proc "c" (p_obj : rawptr, p_interface : ^NetMultiplayerPeer),
};

GdnativeCore1_2ApiStruct :: struct {
    type : _c.uint,
    version : GdnativeApiVersion,
    next : ^GdnativeApiStruct,
    godot_dictionary_duplicate : #type proc "c" (p_self : ^Dictionary, p_deep : Bool) -> Dictionary,
    godot_vector3_move_toward : #type proc "c" (p_self : ^Vector3, p_to : ^Vector3, p_delta : _c.float) -> Vector3,
    godot_vector2_move_toward : #type proc "c" (p_self : ^Vector2, p_to : ^Vector2, p_delta : _c.float) -> Vector2,
    godot_string_count : #type proc "c" (p_self : ^String, p_what : String, p_from : _c.int, p_to : _c.int) -> _c.int,
    godot_string_countn : #type proc "c" (p_self : ^String, p_what : String, p_from : _c.int, p_to : _c.int) -> _c.int,
    godot_vector3_direction_to : #type proc "c" (p_self : ^Vector3, p_to : ^Vector3) -> Vector3,
    godot_vector2_direction_to : #type proc "c" (p_self : ^Vector2, p_to : ^Vector2) -> Vector2,
    godot_array_slice : #type proc "c" (p_self : ^Array, p_begin : _c.int, p_end : _c.int, p_step : _c.int, p_deep : Bool) -> Array,
    godot_pool_byte_array_empty : #type proc "c" (p_self : ^PoolByteArray) -> Bool,
    godot_pool_int_array_empty : #type proc "c" (p_self : ^PoolIntArray) -> Bool,
    godot_pool_real_array_empty : #type proc "c" (p_self : ^PoolRealArray) -> Bool,
    godot_pool_string_array_empty : #type proc "c" (p_self : ^PoolStringArray) -> Bool,
    godot_pool_vector2_array_empty : #type proc "c" (p_self : ^PoolVector2Array) -> Bool,
    godot_pool_vector3_array_empty : #type proc "c" (p_self : ^PoolVector3Array) -> Bool,
    godot_pool_color_array_empty : #type proc "c" (p_self : ^PoolColorArray) -> Bool,
    godot_get_class_tag : #type proc "c" (p_class : ^StringName) -> rawptr,
    godot_object_cast_to : #type proc "c" (p_object : rawptr, p_class_tag : rawptr) -> rawptr,
    godot_instance_from_id : #type proc "c" (p_instance_id : _c.int) -> rawptr,
};

GdnativeCore1_1ApiStruct :: struct {
    type : _c.uint,
    version : GdnativeApiVersion,
    next : ^GdnativeApiStruct,
    godot_color_to_abgr32 : #type proc "c" (p_self : ^Color) -> _c.int,
    godot_color_to_abgr64 : #type proc "c" (p_self : ^Color) -> _c.int,
    godot_color_to_argb64 : #type proc "c" (p_self : ^Color) -> _c.int,
    godot_color_to_rgba64 : #type proc "c" (p_self : ^Color) -> _c.int,
    godot_color_darkened : #type proc "c" (p_self : ^Color, p_amount : _c.float) -> Color,
    godot_color_from_hsv : #type proc "c" (p_self : ^Color, p_h : _c.float, p_s : _c.float, p_v : _c.float, p_a : _c.float) -> Color,
    godot_color_lightened : #type proc "c" (p_self : ^Color, p_amount : _c.float) -> Color,
    godot_array_duplicate : #type proc "c" (p_self : ^Array, p_deep : Bool) -> Array,
    godot_array_max : #type proc "c" (p_self : ^Array) -> Variant,
    godot_array_min : #type proc "c" (p_self : ^Array) -> Variant,
    godot_array_shuffle : #type proc "c" (p_self : ^Array),
    godot_basis_slerp : #type proc "c" (p_self : ^Basis, p_b : ^Basis, p_t : _c.float) -> Basis,
    godot_dictionary_get_with_default : #type proc "c" (p_self : ^Dictionary, p_key : ^Variant, p_default : ^Variant) -> Variant,
    godot_dictionary_erase_with_return : #type proc "c" (p_self : ^Dictionary, p_key : ^Variant) -> Bool,
    godot_node_path_get_as_property_path : #type proc "c" (p_self : ^NodePath) -> NodePath,
    godot_quat_set_axis_angle : #type proc "c" (p_self : ^Quat, p_axis : ^Vector3, p_angle : _c.float),
    godot_rect2_grow_individual : #type proc "c" (p_self : ^Rect2, p_left : _c.float, p_top : _c.float, p_right : _c.float, p_bottom : _c.float) -> Rect2,
    godot_rect2_grow_margin : #type proc "c" (p_self : ^Rect2, p_margin : _c.int, p_by : _c.float) -> Rect2,
    godot_rect2_abs : #type proc "c" (p_self : ^Rect2) -> Rect2,
    godot_string_dedent : #type proc "c" (p_self : ^String) -> String,
    godot_string_trim_prefix : #type proc "c" (p_self : ^String, p_prefix : ^String) -> String,
    godot_string_trim_suffix : #type proc "c" (p_self : ^String, p_suffix : ^String) -> String,
    godot_string_rstrip : #type proc "c" (p_self : ^String, p_chars : ^String) -> String,
    godot_string_rsplit : #type proc "c" (p_self : ^String, p_divisor : ^String, p_allow_empty : Bool, p_maxsplit : _c.int) -> PoolStringArray,
    godot_basis_get_quat : #type proc "c" (p_self : ^Basis) -> Quat,
    godot_basis_set_quat : #type proc "c" (p_self : ^Basis, p_quat : ^Quat),
    godot_basis_set_axis_angle_scale : #type proc "c" (p_self : ^Basis, p_axis : ^Vector3, p_phi : _c.float, p_scale : ^Vector3),
    godot_basis_set_euler_scale : #type proc "c" (p_self : ^Basis, p_euler : ^Vector3, p_scale : ^Vector3),
    godot_basis_set_quat_scale : #type proc "c" (p_self : ^Basis, p_quat : ^Quat, p_scale : ^Vector3),
    godot_is_instance_valid : #type proc "c" (p_object : rawptr) -> Bool,
    godot_quat_new_with_basis : #type proc "c" (r_dest : ^Quat, p_basis : ^Basis),
    godot_quat_new_with_euler : #type proc "c" (r_dest : ^Quat, p_euler : ^Vector3),
    godot_transform_new_with_quat : #type proc "c" (r_dest : ^Transform, p_quat : ^Quat),
    godot_variant_get_operator_name : #type proc "c" (p_op : VariantOperator) -> String,
    godot_variant_evaluate : #type proc "c" (p_op : VariantOperator, p_a : ^Variant, p_b : ^Variant, r_ret : ^Variant, r_valid : ^Bool),
};

PropertyAttributes :: struct {
    rset_type : MethodRpcMode,
    type : _c.int,
    hint : PropertyHint,
    hint_string : String,
    usage : PropertyUsageFlags,
    default_value : Variant,
};

InstanceCreateFunc :: struct {
    create_func : #type proc "c" (unamed0 : rawptr, unamed1 : rawptr) -> rawptr,
    method_data : rawptr,
    free_func : #type proc "c" (unamed0 : rawptr),
};

InstanceDestroyFunc :: struct {
    destroy_func : #type proc "c" (unamed0 : rawptr, unamed1 : rawptr, unamed2 : rawptr),
    method_data : rawptr,
    free_func : #type proc "c" (unamed0 : rawptr),
};

MethodAttributes :: struct {
    rpc_type : MethodRpcMode,
};

InstanceMethod :: struct {
    method : #type proc "c" (unamed0 : rawptr, unamed1 : rawptr, unamed2 : rawptr, unamed3 : _c.int, unamed4 : ^^Variant) -> Variant,
    method_data : rawptr,
    free_func : #type proc "c" (unamed0 : rawptr),
};

PropertySetFunc :: struct {
    set_func : #type proc "c" (unamed0 : rawptr, unamed1 : rawptr, unamed2 : rawptr, unamed3 : ^Variant),
    method_data : rawptr,
    free_func : #type proc "c" (unamed0 : rawptr),
};

PropertyGetFunc :: struct {
    get_func : #type proc "c" (unamed0 : rawptr, unamed1 : rawptr, unamed2 : rawptr) -> Variant,
    method_data : rawptr,
    free_func : #type proc "c" (unamed0 : rawptr),
};

SignalArgument :: struct {
    name : String,
    type : _c.int,
    hint : PropertyHint,
    hint_string : String,
    usage : PropertyUsageFlags,
    default_value : Variant,
};

Signal :: struct {
    name : String,
    num_args : _c.int,
    args : ^SignalArgument,
    num_default_args : _c.int,
    default_args : ^Variant,
};

MethodArg :: struct {
    name : String,
    type : VariantType,
    hint : PropertyHint,
    hint_string : String,
};

InstanceBindingFunctions :: struct {
    alloc_instance_binding_data : #type proc "c" (unamed0 : rawptr, unamed1 : rawptr, unamed2 : rawptr) -> rawptr,
    free_instance_binding_data : #type proc "c" (unamed0 : rawptr, unamed1 : rawptr),
    refcount_incremented_instance_binding : #type proc "c" (unamed0 : rawptr, unamed1 : rawptr),
    refcount_decremented_instance_binding : #type proc "c" (unamed0 : rawptr, unamed1 : rawptr) -> Bool,
    data : rawptr,
    free_func : #type proc "c" (unamed0 : rawptr),
};

NetStreamPeer :: struct {
    version : GdnativeApiVersion,
    data : rawptr,
    get_data : #type proc "c" (user : rawptr, p_buffer : ^u8, p_bytes : _c.int) -> Error,
    get_partial_data : #type proc "c" (user : rawptr, p_buffer : ^u8, p_bytes : _c.int, r_received : ^_c.int) -> Error,
    put_data : #type proc "c" (user : rawptr, p_data : ^u8, p_bytes : _c.int) -> Error,
    put_partial_data : #type proc "c" (user : rawptr, p_data : ^u8, p_bytes : _c.int, r_sent : ^_c.int) -> Error,
    get_available_bytes : #type proc "c" (user : rawptr) -> _c.int,
    next : rawptr,
};

NetPacketPeer :: struct {
    version : GdnativeApiVersion,
    data : rawptr,
    get_packet : #type proc "c" (unamed0 : rawptr, unamed1 : ^^u8, unamed2 : ^_c.int) -> Error,
    put_packet : #type proc "c" (unamed0 : rawptr, unamed1 : ^u8, unamed2 : _c.int) -> Error,
    get_available_packet_count : #type proc "c" (unamed0 : rawptr) -> _c.int,
    get_max_packet_size : #type proc "c" (unamed0 : rawptr) -> _c.int,
    next : rawptr,
};

NetMultiplayerPeer :: struct {
    version : GdnativeApiVersion,
    data : rawptr,
    get_packet : #type proc "c" (unamed0 : rawptr, unamed1 : ^^u8, unamed2 : ^_c.int) -> Error,
    put_packet : #type proc "c" (unamed0 : rawptr, unamed1 : ^u8, unamed2 : _c.int) -> Error,
    get_available_packet_count : #type proc "c" (unamed0 : rawptr) -> _c.int,
    get_max_packet_size : #type proc "c" (unamed0 : rawptr) -> _c.int,
    set_transfer_mode : #type proc "c" (unamed0 : rawptr, unamed1 : _c.int),
    get_transfer_mode : #type proc "c" (unamed0 : rawptr) -> _c.int,
    set_target_peer : #type proc "c" (unamed0 : rawptr, unamed1 : _c.int),
    get_packet_peer : #type proc "c" (unamed0 : rawptr) -> _c.int,
    is_server : #type proc "c" (unamed0 : rawptr) -> Bool,
    poll : #type proc "c" (unamed0 : rawptr),
    get_unique_id : #type proc "c" (unamed0 : rawptr) -> i32,
    set_refuse_new_connections : #type proc "c" (unamed0 : rawptr, unamed1 : Bool),
    is_refusing_new_connections : #type proc "c" (unamed0 : rawptr) -> Bool,
    get_connection_status : #type proc "c" (unamed0 : rawptr) -> _c.int,
    next : rawptr,
};

NetWebrtcLibrary :: struct {
    version : GdnativeApiVersion,
    unregistered : #type proc "c" (),
    create_peer_connection : #type proc "c" (unamed0 : rawptr) -> Error,
    next : rawptr,
};

NetWebrtcPeerConnection :: struct {
    version : GdnativeApiVersion,
    data : rawptr,
    get_connection_state : #type proc "c" (unamed0 : rawptr) -> _c.int,
    initialize : #type proc "c" (unamed0 : rawptr, unamed1 : ^Dictionary) -> Error,
    create_data_channel : #type proc "c" (unamed0 : rawptr, p_channel_name : cstring, unamed1 : ^Dictionary) -> rawptr,
    create_offer : #type proc "c" (unamed0 : rawptr) -> Error,
    create_answer : #type proc "c" (unamed0 : rawptr) -> Error,
    set_remote_description : #type proc "c" (unamed0 : rawptr, unamed1 : cstring, unamed2 : cstring) -> Error,
    set_local_description : #type proc "c" (unamed0 : rawptr, unamed1 : cstring, unamed2 : cstring) -> Error,
    add_ice_candidate : #type proc "c" (unamed0 : rawptr, unamed1 : cstring, unamed2 : _c.int, unamed3 : cstring) -> Error,
    poll : #type proc "c" (unamed0 : rawptr) -> Error,
    close : #type proc "c" (unamed0 : rawptr),
    next : rawptr,
};

NetWebrtcDataChannel :: struct {
    version : GdnativeApiVersion,
    data : rawptr,
    get_packet : #type proc "c" (unamed0 : rawptr, unamed1 : ^^u8, unamed2 : ^_c.int) -> Error,
    put_packet : #type proc "c" (unamed0 : rawptr, unamed1 : ^u8, unamed2 : _c.int) -> Error,
    get_available_packet_count : #type proc "c" (unamed0 : rawptr) -> _c.int,
    get_max_packet_size : #type proc "c" (unamed0 : rawptr) -> _c.int,
    set_write_mode : #type proc "c" (unamed0 : rawptr, unamed1 : _c.int),
    get_write_mode : #type proc "c" (unamed0 : rawptr) -> _c.int,
    was_string_packet : #type proc "c" (unamed0 : rawptr) -> Bool,
    get_ready_state : #type proc "c" (unamed0 : rawptr) -> _c.int,
    get_label : #type proc "c" (unamed0 : rawptr) -> cstring,
    is_ordered : #type proc "c" (unamed0 : rawptr) -> Bool,
    get_id : #type proc "c" (unamed0 : rawptr) -> _c.int,
    get_max_packet_life_time : #type proc "c" (unamed0 : rawptr) -> _c.int,
    get_max_retransmits : #type proc "c" (unamed0 : rawptr) -> _c.int,
    get_protocol : #type proc "c" (unamed0 : rawptr) -> cstring,
    is_negotiated : #type proc "c" (unamed0 : rawptr) -> Bool,
    poll : #type proc "c" (unamed0 : rawptr) -> Error,
    close : #type proc "c" (unamed0 : rawptr),
    next : rawptr,
};

NetWebrtcDataChannelExt :: struct {
    get_buffered_amount : #type proc "c" (unamed0 : rawptr) -> _c.int,
    next : rawptr,
};

PluginscriptInstanceDesc :: struct {
    init : #type proc "c" (p_data : rawptr, p_owner : rawptr) -> rawptr,
    finish : #type proc "c" (p_data : rawptr),
    set_prop : #type proc "c" (p_data : rawptr, p_name : ^String, p_value : ^Variant) -> Bool,
    get_prop : #type proc "c" (p_data : rawptr, p_name : ^String, r_ret : ^Variant) -> Bool,
    call_method : #type proc "c" (p_data : rawptr, p_method : ^StringName, p_args : ^^Variant, p_argcount : _c.int, r_error : ^VariantCallError) -> Variant,
    notification : #type proc "c" (p_data : rawptr, p_notification : _c.int),
    get_rpc_mode : #type proc "c" (p_data : rawptr, p_method : ^String) -> MethodRpcMode,
    get_rset_mode : #type proc "c" (p_data : rawptr, p_variable : ^String) -> MethodRpcMode,
    refcount_incremented : #type proc "c" (p_data : rawptr),
    refcount_decremented : #type proc "c" (p_data : rawptr) -> Bool,
};

PluginscriptScriptManifest :: struct {
    data : rawptr,
    name : StringName,
    is_tool : Bool,
    base : StringName,
    member_lines : Dictionary,
    methods : Array,
    signals : Array,
    properties : Array,
};

PluginscriptScriptDesc :: struct {
    init : #type proc "c" (p_data : rawptr, p_path : ^String, p_source : ^String, r_error : ^Error) -> PluginscriptScriptManifest,
    finish : #type proc "c" (p_data : rawptr),
    instance_desc : PluginscriptInstanceDesc,
};

PluginscriptProfilingData :: struct {
    signature : StringName,
    call_count : _c.int,
    total_time : _c.int,
    self_time : _c.int,
};

PluginscriptLanguageDesc :: struct {
    name : cstring,
    type : cstring,
    extension : cstring,
    recognized_extensions : ^cstring,
    init : #type proc "c" () -> rawptr,
    finish : #type proc "c" (p_data : rawptr),
    reserved_words : ^cstring,
    comment_delimiters : ^cstring,
    string_delimiters : ^cstring,
    has_named_classes : Bool,
    supports_builtin_mode : Bool,
    get_template_source_code : #type proc "c" (p_data : rawptr, p_class_name : ^String, p_base_class_name : ^String) -> String,
    validate : #type proc "c" (p_data : rawptr, p_script : ^String, r_line_error : ^_c.int, r_col_error : ^_c.int, r_test_error : ^String, p_path : ^String, r_functions : ^PoolStringArray) -> Bool,
    find_function : #type proc "c" (p_data : rawptr, p_function : ^String, p_code : ^String) -> _c.int,
    make_function : #type proc "c" (p_data : rawptr, p_class : ^String, p_name : ^String, p_args : ^PoolStringArray) -> String,
    complete_code : #type proc "c" (p_data : rawptr, p_code : ^String, p_path : ^String, p_owner : rawptr, r_options : ^Array, r_force : ^Bool, r_call_hint : ^String) -> Error,
    auto_indent_code : #type proc "c" (p_data : rawptr, p_code : ^String, p_from_line : _c.int, p_to_line : _c.int),
    add_global_constant : #type proc "c" (p_data : rawptr, p_variable : ^String, p_value : ^Variant),
    debug_get_error : #type proc "c" (p_data : rawptr) -> String,
    debug_get_stack_level_count : #type proc "c" (p_data : rawptr) -> _c.int,
    debug_get_stack_level_line : #type proc "c" (p_data : rawptr, p_level : _c.int) -> _c.int,
    debug_get_stack_level_function : #type proc "c" (p_data : rawptr, p_level : _c.int) -> String,
    debug_get_stack_level_source : #type proc "c" (p_data : rawptr, p_level : _c.int) -> String,
    debug_get_stack_level_locals : #type proc "c" (p_data : rawptr, p_level : _c.int, p_locals : ^PoolStringArray, p_values : ^Array, p_max_subitems : _c.int, p_max_depth : _c.int),
    debug_get_stack_level_members : #type proc "c" (p_data : rawptr, p_level : _c.int, p_members : ^PoolStringArray, p_values : ^Array, p_max_subitems : _c.int, p_max_depth : _c.int),
    debug_get_globals : #type proc "c" (p_data : rawptr, p_locals : ^PoolStringArray, p_values : ^Array, p_max_subitems : _c.int, p_max_depth : _c.int),
    debug_parse_stack_level_expression : #type proc "c" (p_data : rawptr, p_level : _c.int, p_expression : ^String, p_max_subitems : _c.int, p_max_depth : _c.int) -> String,
    get_public_functions : #type proc "c" (p_data : rawptr, r_functions : ^Array),
    get_public_constants : #type proc "c" (p_data : rawptr, r_constants : ^Dictionary),
    profiling_start : #type proc "c" (p_data : rawptr),
    profiling_stop : #type proc "c" (p_data : rawptr),
    profiling_get_accumulated_data : #type proc "c" (p_data : rawptr, r_info : ^PluginscriptProfilingData, p_info_max : _c.int) -> _c.int,
    profiling_get_frame_data : #type proc "c" (p_data : rawptr, r_info : ^PluginscriptProfilingData, p_info_max : _c.int) -> _c.int,
    profiling_frame : #type proc "c" (p_data : rawptr),
    script_desc : PluginscriptScriptDesc,
};

VideodecoderInterfaceGdnative :: struct {
    version : GdnativeApiVersion,
    next : rawptr,
    constructor : #type proc "c" (unamed0 : rawptr) -> rawptr,
    destructor : #type proc "c" (unamed0 : rawptr),
    get_plugin_name : #type proc "c" () -> cstring,
    get_supported_extensions : #type proc "c" (count : ^_c.int) -> ^cstring,
    open_file : #type proc "c" (unamed0 : rawptr, unamed1 : rawptr) -> Bool,
    get_length : #type proc "c" (unamed0 : rawptr) -> _c.float,
    get_playback_position : #type proc "c" (unamed0 : rawptr) -> _c.float,
    seek : #type proc "c" (unamed0 : rawptr, unamed1 : _c.float),
    set_audio_track : #type proc "c" (unamed0 : rawptr, unamed1 : _c.int),
    update : #type proc "c" (unamed0 : rawptr, unamed1 : _c.float),
    get_videoframe : #type proc "c" (unamed0 : rawptr) -> ^PoolByteArray,
    get_audioframe : #type proc "c" (unamed0 : rawptr, unamed1 : ^_c.float, unamed2 : _c.int) -> _c.int,
    get_channels : #type proc "c" (unamed0 : rawptr) -> _c.int,
    get_mix_rate : #type proc "c" (unamed0 : rawptr) -> _c.int,
    get_texture_size : #type proc "c" (unamed0 : rawptr) -> Vector2,
};

@(default_calling_convention="c")
foreign gdnative {

    @(link_name="godot_android_get_env")
    android_get_env :: proc "c" () -> rawptr ---;

    @(link_name="godot_android_get_activity")
    android_get_activity :: proc "c" () -> rawptr ---;

    @(link_name="godot_android_get_surface")
    android_get_surface :: proc "c" () -> rawptr ---;

    @(link_name="godot_android_is_activity_resumed")
    android_is_activity_resumed :: proc "c" () -> Bool ---;

    @(link_name="godot_arvr_register_interface")
    arvr_register_interface :: proc "c" (p_interface : ^ArvrInterfaceGdnative) ---;

    @(link_name="godot_arvr_get_worldscale")
    arvr_get_worldscale :: proc "c" () -> Real ---;

    @(link_name="godot_arvr_get_reference_frame")
    arvr_get_reference_frame :: proc "c" () -> Transform ---;

    @(link_name="godot_arvr_blit")
    arvr_blit :: proc "c" (p_eye : Int, p_render_target : ^Rid, p_rect : ^Rect2) ---;

    @(link_name="godot_arvr_get_texid")
    arvr_get_texid :: proc "c" (p_render_target : ^Rid) -> Int ---;

    @(link_name="godot_arvr_add_controller")
    arvr_add_controller :: proc "c" (p_device_name : cstring, p_hand : Int, p_tracks_orientation : Bool, p_tracks_position : Bool) -> Int ---;

    @(link_name="godot_arvr_remove_controller")
    arvr_remove_controller :: proc "c" (p_controller_id : Int) ---;

    @(link_name="godot_arvr_set_controller_transform")
    arvr_set_controller_transform :: proc "c" (p_controller_id : Int, p_transform : ^Transform, p_tracks_orientation : Bool, p_tracks_position : Bool) ---;

    @(link_name="godot_arvr_set_controller_button")
    arvr_set_controller_button :: proc "c" (p_controller_id : Int, p_button : Int, p_is_pressed : Bool) ---;

    @(link_name="godot_arvr_set_controller_axis")
    arvr_set_controller_axis :: proc "c" (p_controller_id : Int, p_axis : Int, p_value : Real, p_can_be_negative : Bool) ---;

    @(link_name="godot_arvr_get_controller_rumble")
    arvr_get_controller_rumble :: proc "c" (p_controller_id : Int) -> Real ---;

    @(link_name="godot_arvr_set_interface")
    arvr_set_interface :: proc "c" (p_arvr_interface : ^Object, p_gdn_interface : ^ArvrInterfaceGdnative) ---;

    @(link_name="godot_arvr_get_depthid")
    arvr_get_depthid :: proc "c" (p_render_target : ^Rid) -> Int ---;

    @(link_name="godot_aabb_new")
    aabb_new :: proc "c" (r_dest : ^Aabb, p_pos : ^Vector3, p_size : ^Vector3) ---;

    @(link_name="godot_aabb_get_position")
    aabb_get_position :: proc "c" (p_self : ^Aabb) -> Vector3 ---;

    @(link_name="godot_aabb_set_position")
    aabb_set_position :: proc "c" (p_self : ^Aabb, p_v : ^Vector3) ---;

    @(link_name="godot_aabb_get_size")
    aabb_get_size :: proc "c" (p_self : ^Aabb) -> Vector3 ---;

    @(link_name="godot_aabb_set_size")
    aabb_set_size :: proc "c" (p_self : ^Aabb, p_v : ^Vector3) ---;

    @(link_name="godot_aabb_as_string")
    aabb_as_string :: proc "c" (p_self : ^Aabb) -> String ---;

    @(link_name="godot_aabb_get_area")
    aabb_get_area :: proc "c" (p_self : ^Aabb) -> Real ---;

    @(link_name="godot_aabb_has_no_area")
    aabb_has_no_area :: proc "c" (p_self : ^Aabb) -> Bool ---;

    @(link_name="godot_aabb_has_no_surface")
    aabb_has_no_surface :: proc "c" (p_self : ^Aabb) -> Bool ---;

    @(link_name="godot_aabb_intersects")
    aabb_intersects :: proc "c" (p_self : ^Aabb, p_with : ^Aabb) -> Bool ---;

    @(link_name="godot_aabb_encloses")
    aabb_encloses :: proc "c" (p_self : ^Aabb, p_with : ^Aabb) -> Bool ---;

    @(link_name="godot_aabb_merge")
    aabb_merge :: proc "c" (p_self : ^Aabb, p_with : ^Aabb) -> Aabb ---;

    @(link_name="godot_aabb_intersection")
    aabb_intersection :: proc "c" (p_self : ^Aabb, p_with : ^Aabb) -> Aabb ---;

    @(link_name="godot_aabb_intersects_plane")
    aabb_intersects_plane :: proc "c" (p_self : ^Aabb, p_plane : ^Plane) -> Bool ---;

    @(link_name="godot_aabb_intersects_segment")
    aabb_intersects_segment :: proc "c" (p_self : ^Aabb, p_from : ^Vector3, p_to : ^Vector3) -> Bool ---;

    @(link_name="godot_aabb_has_point")
    aabb_has_point :: proc "c" (p_self : ^Aabb, p_point : ^Vector3) -> Bool ---;

    @(link_name="godot_aabb_get_support")
    aabb_get_support :: proc "c" (p_self : ^Aabb, p_dir : ^Vector3) -> Vector3 ---;

    @(link_name="godot_aabb_get_longest_axis")
    aabb_get_longest_axis :: proc "c" (p_self : ^Aabb) -> Vector3 ---;

    @(link_name="godot_aabb_get_longest_axis_index")
    aabb_get_longest_axis_index :: proc "c" (p_self : ^Aabb) -> Int ---;

    @(link_name="godot_aabb_get_longest_axis_size")
    aabb_get_longest_axis_size :: proc "c" (p_self : ^Aabb) -> Real ---;

    @(link_name="godot_aabb_get_shortest_axis")
    aabb_get_shortest_axis :: proc "c" (p_self : ^Aabb) -> Vector3 ---;

    @(link_name="godot_aabb_get_shortest_axis_index")
    aabb_get_shortest_axis_index :: proc "c" (p_self : ^Aabb) -> Int ---;

    @(link_name="godot_aabb_get_shortest_axis_size")
    aabb_get_shortest_axis_size :: proc "c" (p_self : ^Aabb) -> Real ---;

    @(link_name="godot_aabb_expand")
    aabb_expand :: proc "c" (p_self : ^Aabb, p_to_point : ^Vector3) -> Aabb ---;

    @(link_name="godot_aabb_grow")
    aabb_grow :: proc "c" (p_self : ^Aabb, p_by : Real) -> Aabb ---;

    @(link_name="godot_aabb_get_endpoint")
    aabb_get_endpoint :: proc "c" (p_self : ^Aabb, p_idx : Int) -> Vector3 ---;

    @(link_name="godot_aabb_operator_equal")
    aabb_operator_equal :: proc "c" (p_self : ^Aabb, p_b : ^Aabb) -> Bool ---;

    @(link_name="godot_array_new")
    array_new :: proc "c" (r_dest : ^Array) ---;

    @(link_name="godot_array_new_copy")
    array_new_copy :: proc "c" (r_dest : ^Array, p_src : ^Array) ---;

    @(link_name="godot_array_new_pool_color_array")
    array_new_pool_color_array :: proc "c" (r_dest : ^Array, p_pca : ^PoolColorArray) ---;

    @(link_name="godot_array_new_pool_vector3_array")
    array_new_pool_vector3_array :: proc "c" (r_dest : ^Array, p_pv3a : ^PoolVector3Array) ---;

    @(link_name="godot_array_new_pool_vector2_array")
    array_new_pool_vector2_array :: proc "c" (r_dest : ^Array, p_pv2a : ^PoolVector2Array) ---;

    @(link_name="godot_array_new_pool_string_array")
    array_new_pool_string_array :: proc "c" (r_dest : ^Array, p_psa : ^PoolStringArray) ---;

    @(link_name="godot_array_new_pool_real_array")
    array_new_pool_real_array :: proc "c" (r_dest : ^Array, p_pra : ^PoolRealArray) ---;

    @(link_name="godot_array_new_pool_int_array")
    array_new_pool_int_array :: proc "c" (r_dest : ^Array, p_pia : ^PoolIntArray) ---;

    @(link_name="godot_array_new_pool_byte_array")
    array_new_pool_byte_array :: proc "c" (r_dest : ^Array, p_pba : ^PoolByteArray) ---;

    @(link_name="godot_array_set")
    array_set :: proc "c" (p_self : ^Array, p_idx : Int, p_value : ^Variant) ---;

    @(link_name="godot_array_get")
    array_get :: proc "c" (p_self : ^Array, p_idx : Int) -> Variant ---;

    @(link_name="godot_array_operator_index")
    array_operator_index :: proc "c" (p_self : ^Array, p_idx : Int) -> ^Variant ---;

    @(link_name="godot_array_operator_index_const")
    array_operator_index_const :: proc "c" (p_self : ^Array, p_idx : Int) -> ^Variant ---;

    @(link_name="godot_array_append")
    array_append :: proc "c" (p_self : ^Array, p_value : ^Variant) ---;

    @(link_name="godot_array_clear")
    array_clear :: proc "c" (p_self : ^Array) ---;

    @(link_name="godot_array_count")
    array_count :: proc "c" (p_self : ^Array, p_value : ^Variant) -> Int ---;

    @(link_name="godot_array_empty")
    array_empty :: proc "c" (p_self : ^Array) -> Bool ---;

    @(link_name="godot_array_erase")
    array_erase :: proc "c" (p_self : ^Array, p_value : ^Variant) ---;

    @(link_name="godot_array_front")
    array_front :: proc "c" (p_self : ^Array) -> Variant ---;

    @(link_name="godot_array_back")
    array_back :: proc "c" (p_self : ^Array) -> Variant ---;

    @(link_name="godot_array_find")
    array_find :: proc "c" (p_self : ^Array, p_what : ^Variant, p_from : Int) -> Int ---;

    @(link_name="godot_array_find_last")
    array_find_last :: proc "c" (p_self : ^Array, p_what : ^Variant) -> Int ---;

    @(link_name="godot_array_has")
    array_has :: proc "c" (p_self : ^Array, p_value : ^Variant) -> Bool ---;

    @(link_name="godot_array_hash")
    array_hash :: proc "c" (p_self : ^Array) -> Int ---;

    @(link_name="godot_array_insert")
    array_insert :: proc "c" (p_self : ^Array, p_pos : Int, p_value : ^Variant) ---;

    @(link_name="godot_array_invert")
    array_invert :: proc "c" (p_self : ^Array) ---;

    @(link_name="godot_array_pop_back")
    array_pop_back :: proc "c" (p_self : ^Array) -> Variant ---;

    @(link_name="godot_array_pop_front")
    array_pop_front :: proc "c" (p_self : ^Array) -> Variant ---;

    @(link_name="godot_array_push_back")
    array_push_back :: proc "c" (p_self : ^Array, p_value : ^Variant) ---;

    @(link_name="godot_array_push_front")
    array_push_front :: proc "c" (p_self : ^Array, p_value : ^Variant) ---;

    @(link_name="godot_array_remove")
    array_remove :: proc "c" (p_self : ^Array, p_idx : Int) ---;

    @(link_name="godot_array_resize")
    array_resize :: proc "c" (p_self : ^Array, p_size : Int) ---;

    @(link_name="godot_array_rfind")
    array_rfind :: proc "c" (p_self : ^Array, p_what : ^Variant, p_from : Int) -> Int ---;

    @(link_name="godot_array_size")
    array_size :: proc "c" (p_self : ^Array) -> Int ---;

    @(link_name="godot_array_sort")
    array_sort :: proc "c" (p_self : ^Array) ---;

    @(link_name="godot_array_sort_custom")
    array_sort_custom :: proc "c" (p_self : ^Array, p_obj : ^Object, p_func : ^String) ---;

    @(link_name="godot_array_bsearch")
    array_bsearch :: proc "c" (p_self : ^Array, p_value : ^Variant, p_before : Bool) -> Int ---;

    @(link_name="godot_array_bsearch_custom")
    array_bsearch_custom :: proc "c" (p_self : ^Array, p_value : ^Variant, p_obj : ^Object, p_func : ^String, p_before : Bool) -> Int ---;

    @(link_name="godot_array_destroy")
    array_destroy :: proc "c" (p_self : ^Array) ---;

    @(link_name="godot_array_duplicate")
    array_duplicate :: proc "c" (p_self : ^Array, p_deep : Bool) -> Array ---;

    @(link_name="godot_array_slice")
    array_slice :: proc "c" (p_self : ^Array, p_begin : Int, p_end : Int, p_step : Int, p_deep : Bool) -> Array ---;

    @(link_name="godot_array_max")
    array_max :: proc "c" (p_self : ^Array) -> Variant ---;

    @(link_name="godot_array_min")
    array_min :: proc "c" (p_self : ^Array) -> Variant ---;

    @(link_name="godot_array_shuffle")
    array_shuffle :: proc "c" (p_self : ^Array) ---;

    @(link_name="godot_basis_new_with_rows")
    basis_new_with_rows :: proc "c" (r_dest : ^Basis, p_x_axis : ^Vector3, p_y_axis : ^Vector3, p_z_axis : ^Vector3) ---;

    @(link_name="godot_basis_new_with_axis_and_angle")
    basis_new_with_axis_and_angle :: proc "c" (r_dest : ^Basis, p_axis : ^Vector3, p_phi : Real) ---;

    @(link_name="godot_basis_new_with_euler")
    basis_new_with_euler :: proc "c" (r_dest : ^Basis, p_euler : ^Vector3) ---;

    @(link_name="godot_basis_new_with_euler_quat")
    basis_new_with_euler_quat :: proc "c" (r_dest : ^Basis, p_euler : ^Quat) ---;

    @(link_name="godot_basis_as_string")
    basis_as_string :: proc "c" (p_self : ^Basis) -> String ---;

    @(link_name="godot_basis_inverse")
    basis_inverse :: proc "c" (p_self : ^Basis) -> Basis ---;

    @(link_name="godot_basis_transposed")
    basis_transposed :: proc "c" (p_self : ^Basis) -> Basis ---;

    @(link_name="godot_basis_orthonormalized")
    basis_orthonormalized :: proc "c" (p_self : ^Basis) -> Basis ---;

    @(link_name="godot_basis_determinant")
    basis_determinant :: proc "c" (p_self : ^Basis) -> Real ---;

    @(link_name="godot_basis_rotated")
    basis_rotated :: proc "c" (p_self : ^Basis, p_axis : ^Vector3, p_phi : Real) -> Basis ---;

    @(link_name="godot_basis_scaled")
    basis_scaled :: proc "c" (p_self : ^Basis, p_scale : ^Vector3) -> Basis ---;

    @(link_name="godot_basis_get_scale")
    basis_get_scale :: proc "c" (p_self : ^Basis) -> Vector3 ---;

    @(link_name="godot_basis_get_euler")
    basis_get_euler :: proc "c" (p_self : ^Basis) -> Vector3 ---;

    @(link_name="godot_basis_get_quat")
    basis_get_quat :: proc "c" (p_self : ^Basis) -> Quat ---;

    @(link_name="godot_basis_set_quat")
    basis_set_quat :: proc "c" (p_self : ^Basis, p_quat : ^Quat) ---;

    @(link_name="godot_basis_set_axis_angle_scale")
    basis_set_axis_angle_scale :: proc "c" (p_self : ^Basis, p_axis : ^Vector3, p_phi : Real, p_scale : ^Vector3) ---;

    @(link_name="godot_basis_set_euler_scale")
    basis_set_euler_scale :: proc "c" (p_self : ^Basis, p_euler : ^Vector3, p_scale : ^Vector3) ---;

    @(link_name="godot_basis_set_quat_scale")
    basis_set_quat_scale :: proc "c" (p_self : ^Basis, p_quat : ^Quat, p_scale : ^Vector3) ---;

    @(link_name="godot_basis_tdotx")
    basis_tdotx :: proc "c" (p_self : ^Basis, p_with : ^Vector3) -> Real ---;

    @(link_name="godot_basis_tdoty")
    basis_tdoty :: proc "c" (p_self : ^Basis, p_with : ^Vector3) -> Real ---;

    @(link_name="godot_basis_tdotz")
    basis_tdotz :: proc "c" (p_self : ^Basis, p_with : ^Vector3) -> Real ---;

    @(link_name="godot_basis_xform")
    basis_xform :: proc "c" (p_self : ^Basis, p_v : ^Vector3) -> Vector3 ---;

    @(link_name="godot_basis_xform_inv")
    basis_xform_inv :: proc "c" (p_self : ^Basis, p_v : ^Vector3) -> Vector3 ---;

    @(link_name="godot_basis_get_orthogonal_index")
    basis_get_orthogonal_index :: proc "c" (p_self : ^Basis) -> Int ---;

    @(link_name="godot_basis_new")
    basis_new :: proc "c" (r_dest : ^Basis) ---;

    @(link_name="godot_basis_get_elements")
    basis_get_elements :: proc "c" (p_self : ^Basis, p_elements : ^Vector3) ---;

    @(link_name="godot_basis_get_axis")
    basis_get_axis :: proc "c" (p_self : ^Basis, p_axis : Int) -> Vector3 ---;

    @(link_name="godot_basis_set_axis")
    basis_set_axis :: proc "c" (p_self : ^Basis, p_axis : Int, p_value : ^Vector3) ---;

    @(link_name="godot_basis_get_row")
    basis_get_row :: proc "c" (p_self : ^Basis, p_row : Int) -> Vector3 ---;

    @(link_name="godot_basis_set_row")
    basis_set_row :: proc "c" (p_self : ^Basis, p_row : Int, p_value : ^Vector3) ---;

    @(link_name="godot_basis_operator_equal")
    basis_operator_equal :: proc "c" (p_self : ^Basis, p_b : ^Basis) -> Bool ---;

    @(link_name="godot_basis_operator_add")
    basis_operator_add :: proc "c" (p_self : ^Basis, p_b : ^Basis) -> Basis ---;

    @(link_name="godot_basis_operator_subtract")
    basis_operator_subtract :: proc "c" (p_self : ^Basis, p_b : ^Basis) -> Basis ---;

    @(link_name="godot_basis_operator_multiply_vector")
    basis_operator_multiply_vector :: proc "c" (p_self : ^Basis, p_b : ^Basis) -> Basis ---;

    @(link_name="godot_basis_operator_multiply_scalar")
    basis_operator_multiply_scalar :: proc "c" (p_self : ^Basis, p_b : Real) -> Basis ---;

    @(link_name="godot_basis_slerp")
    basis_slerp :: proc "c" (p_self : ^Basis, p_b : ^Basis, p_t : Real) -> Basis ---;

    @(link_name="godot_color_new_rgba")
    color_new_rgba :: proc "c" (r_dest : ^Color, p_r : Real, p_g : Real, p_b : Real, p_a : Real) ---;

    @(link_name="godot_color_new_rgb")
    color_new_rgb :: proc "c" (r_dest : ^Color, p_r : Real, p_g : Real, p_b : Real) ---;

    @(link_name="godot_color_get_r")
    color_get_r :: proc "c" (p_self : ^Color) -> Real ---;

    @(link_name="godot_color_set_r")
    color_set_r :: proc "c" (p_self : ^Color, r : Real) ---;

    @(link_name="godot_color_get_g")
    color_get_g :: proc "c" (p_self : ^Color) -> Real ---;

    @(link_name="godot_color_set_g")
    color_set_g :: proc "c" (p_self : ^Color, g : Real) ---;

    @(link_name="godot_color_get_b")
    color_get_b :: proc "c" (p_self : ^Color) -> Real ---;

    @(link_name="godot_color_set_b")
    color_set_b :: proc "c" (p_self : ^Color, b : Real) ---;

    @(link_name="godot_color_get_a")
    color_get_a :: proc "c" (p_self : ^Color) -> Real ---;

    @(link_name="godot_color_set_a")
    color_set_a :: proc "c" (p_self : ^Color, a : Real) ---;

    @(link_name="godot_color_get_h")
    color_get_h :: proc "c" (p_self : ^Color) -> Real ---;

    @(link_name="godot_color_get_s")
    color_get_s :: proc "c" (p_self : ^Color) -> Real ---;

    @(link_name="godot_color_get_v")
    color_get_v :: proc "c" (p_self : ^Color) -> Real ---;

    @(link_name="godot_color_as_string")
    color_as_string :: proc "c" (p_self : ^Color) -> String ---;

    @(link_name="godot_color_to_rgba32")
    color_to_rgba32 :: proc "c" (p_self : ^Color) -> Int ---;

    @(link_name="godot_color_to_abgr32")
    color_to_abgr32 :: proc "c" (p_self : ^Color) -> Int ---;

    @(link_name="godot_color_to_abgr64")
    color_to_abgr64 :: proc "c" (p_self : ^Color) -> Int ---;

    @(link_name="godot_color_to_argb64")
    color_to_argb64 :: proc "c" (p_self : ^Color) -> Int ---;

    @(link_name="godot_color_to_rgba64")
    color_to_rgba64 :: proc "c" (p_self : ^Color) -> Int ---;

    @(link_name="godot_color_to_argb32")
    color_to_argb32 :: proc "c" (p_self : ^Color) -> Int ---;

    @(link_name="godot_color_gray")
    color_gray :: proc "c" (p_self : ^Color) -> Real ---;

    @(link_name="godot_color_inverted")
    color_inverted :: proc "c" (p_self : ^Color) -> Color ---;

    @(link_name="godot_color_contrasted")
    color_contrasted :: proc "c" (p_self : ^Color) -> Color ---;

    @(link_name="godot_color_linear_interpolate")
    color_linear_interpolate :: proc "c" (p_self : ^Color, p_b : ^Color, p_t : Real) -> Color ---;

    @(link_name="godot_color_blend")
    color_blend :: proc "c" (p_self : ^Color, p_over : ^Color) -> Color ---;

    @(link_name="godot_color_darkened")
    color_darkened :: proc "c" (p_self : ^Color, p_amount : Real) -> Color ---;

    @(link_name="godot_color_from_hsv")
    color_from_hsv :: proc "c" (p_self : ^Color, p_h : Real, p_s : Real, p_v : Real, p_a : Real) -> Color ---;

    @(link_name="godot_color_lightened")
    color_lightened :: proc "c" (p_self : ^Color, p_amount : Real) -> Color ---;

    @(link_name="godot_color_to_html")
    color_to_html :: proc "c" (p_self : ^Color, p_with_alpha : Bool) -> String ---;

    @(link_name="godot_color_operator_equal")
    color_operator_equal :: proc "c" (p_self : ^Color, p_b : ^Color) -> Bool ---;

    @(link_name="godot_color_operator_less")
    color_operator_less :: proc "c" (p_self : ^Color, p_b : ^Color) -> Bool ---;

    @(link_name="godot_dictionary_new")
    dictionary_new :: proc "c" (r_dest : ^Dictionary) ---;

    @(link_name="godot_dictionary_new_copy")
    dictionary_new_copy :: proc "c" (r_dest : ^Dictionary, p_src : ^Dictionary) ---;

    @(link_name="godot_dictionary_destroy")
    dictionary_destroy :: proc "c" (p_self : ^Dictionary) ---;

    @(link_name="godot_dictionary_duplicate")
    dictionary_duplicate :: proc "c" (p_self : ^Dictionary, p_deep : Bool) -> Dictionary ---;

    @(link_name="godot_dictionary_size")
    dictionary_size :: proc "c" (p_self : ^Dictionary) -> Int ---;

    @(link_name="godot_dictionary_empty")
    dictionary_empty :: proc "c" (p_self : ^Dictionary) -> Bool ---;

    @(link_name="godot_dictionary_clear")
    dictionary_clear :: proc "c" (p_self : ^Dictionary) ---;

    @(link_name="godot_dictionary_has")
    dictionary_has :: proc "c" (p_self : ^Dictionary, p_key : ^Variant) -> Bool ---;

    @(link_name="godot_dictionary_has_all")
    dictionary_has_all :: proc "c" (p_self : ^Dictionary, p_keys : ^Array) -> Bool ---;

    @(link_name="godot_dictionary_erase")
    dictionary_erase :: proc "c" (p_self : ^Dictionary, p_key : ^Variant) ---;

    @(link_name="godot_dictionary_hash")
    dictionary_hash :: proc "c" (p_self : ^Dictionary) -> Int ---;

    @(link_name="godot_dictionary_keys")
    dictionary_keys :: proc "c" (p_self : ^Dictionary) -> Array ---;

    @(link_name="godot_dictionary_values")
    dictionary_values :: proc "c" (p_self : ^Dictionary) -> Array ---;

    @(link_name="godot_dictionary_get")
    dictionary_get :: proc "c" (p_self : ^Dictionary, p_key : ^Variant) -> Variant ---;

    @(link_name="godot_dictionary_set")
    dictionary_set :: proc "c" (p_self : ^Dictionary, p_key : ^Variant, p_value : ^Variant) ---;

    @(link_name="godot_dictionary_operator_index")
    dictionary_operator_index :: proc "c" (p_self : ^Dictionary, p_key : ^Variant) -> ^Variant ---;

    @(link_name="godot_dictionary_operator_index_const")
    dictionary_operator_index_const :: proc "c" (p_self : ^Dictionary, p_key : ^Variant) -> ^Variant ---;

    @(link_name="godot_dictionary_next")
    dictionary_next :: proc "c" (p_self : ^Dictionary, p_key : ^Variant) -> ^Variant ---;

    @(link_name="godot_dictionary_operator_equal")
    dictionary_operator_equal :: proc "c" (p_self : ^Dictionary, p_b : ^Dictionary) -> Bool ---;

    @(link_name="godot_dictionary_to_json")
    dictionary_to_json :: proc "c" (p_self : ^Dictionary) -> String ---;

    @(link_name="godot_dictionary_erase_with_return")
    dictionary_erase_with_return :: proc "c" (p_self : ^Dictionary, p_key : ^Variant) -> Bool ---;

    @(link_name="godot_dictionary_get_with_default")
    dictionary_get_with_default :: proc "c" (p_self : ^Dictionary, p_key : ^Variant, p_default : ^Variant) -> Variant ---;

    @(link_name="godot_object_destroy")
    object_destroy :: proc "c" (p_o : rawptr) ---;

    @(link_name="godot_global_get_singleton")
    global_get_singleton :: proc "c" (p_name : cstring) -> rawptr ---;

    @(link_name="godot_method_bind_get_method")
    method_bind_get_method :: proc "c" (p_classname : cstring, p_methodname : cstring) -> ^MethodBind ---;

    @(link_name="godot_method_bind_ptrcall")
    method_bind_ptrcall :: proc "c" (p_method_bind : ^MethodBind, p_instance : rawptr, p_args : ^rawptr, p_ret : rawptr) ---;

    @(link_name="godot_method_bind_call")
    method_bind_call :: proc "c" (p_method_bind : ^MethodBind, p_instance : rawptr, p_args : ^^Variant, p_arg_count : _c.int, p_call_error : ^VariantCallError) -> Variant ---;

    @(link_name="godot_get_class_constructor")
    get_class_constructor :: proc "c" (p_classname : cstring) -> ClassConstructor ---;

    @(link_name="godot_get_global_constants")
    get_global_constants :: proc "c" () -> Dictionary ---;

    @(link_name="godot_register_native_call_type")
    register_native_call_type :: proc "c" (p_call_type : cstring, p_callback : NativeCallCb) ---;

    @(link_name="godot_alloc")
    alloc :: proc "c" (p_bytes : _c.int) -> rawptr ---;

    @(link_name="godot_realloc")
    realloc :: proc "c" (p_ptr : rawptr, p_bytes : _c.int) -> rawptr ---;

    @(link_name="godot_free")
    free :: proc "c" (p_ptr : rawptr) ---;

    @(link_name="godot_print_error")
    print_error :: proc "c" (p_description : cstring, p_function : cstring, p_file : cstring, p_line : _c.int) ---;

    @(link_name="godot_print_warning")
    print_warning :: proc "c" (p_description : cstring, p_function : cstring, p_file : cstring, p_line : _c.int) ---;

    @(link_name="godot_print")
    print :: proc "c" (p_message : ^String) ---;

    @(link_name="godot_is_instance_valid")
    is_instance_valid :: proc "c" (p_object : rawptr) -> Bool ---;

    @(link_name="godot_get_class_tag")
    get_class_tag :: proc "c" (p_class : ^StringName) -> rawptr ---;

    @(link_name="godot_object_cast_to")
    object_cast_to :: proc "c" (p_object : rawptr, p_class_tag : rawptr) -> rawptr ---;

    @(link_name="godot_instance_from_id")
    instance_from_id :: proc "c" (p_instance_id : _c.int) -> rawptr ---;

    @(link_name="godot_node_path_new")
    node_path_new :: proc "c" (r_dest : ^NodePath, p_from : ^String) ---;

    @(link_name="godot_node_path_new_copy")
    node_path_new_copy :: proc "c" (r_dest : ^NodePath, p_src : ^NodePath) ---;

    @(link_name="godot_node_path_destroy")
    node_path_destroy :: proc "c" (p_self : ^NodePath) ---;

    @(link_name="godot_node_path_as_string")
    node_path_as_string :: proc "c" (p_self : ^NodePath) -> String ---;

    @(link_name="godot_node_path_is_absolute")
    node_path_is_absolute :: proc "c" (p_self : ^NodePath) -> Bool ---;

    @(link_name="godot_node_path_get_name_count")
    node_path_get_name_count :: proc "c" (p_self : ^NodePath) -> _c.int ---;

    @(link_name="godot_node_path_get_name")
    node_path_get_name :: proc "c" (p_self : ^NodePath, p_idx : _c.int) -> String ---;

    @(link_name="godot_node_path_get_subname_count")
    node_path_get_subname_count :: proc "c" (p_self : ^NodePath) -> _c.int ---;

    @(link_name="godot_node_path_get_subname")
    node_path_get_subname :: proc "c" (p_self : ^NodePath, p_idx : _c.int) -> String ---;

    @(link_name="godot_node_path_get_concatenated_subnames")
    node_path_get_concatenated_subnames :: proc "c" (p_self : ^NodePath) -> String ---;

    @(link_name="godot_node_path_is_empty")
    node_path_is_empty :: proc "c" (p_self : ^NodePath) -> Bool ---;

    @(link_name="godot_node_path_operator_equal")
    node_path_operator_equal :: proc "c" (p_self : ^NodePath, p_b : ^NodePath) -> Bool ---;

    @(link_name="godot_node_path_get_as_property_path")
    node_path_get_as_property_path :: proc "c" (p_self : ^NodePath) -> NodePath ---;

    @(link_name="godot_plane_new_with_reals")
    plane_new_with_reals :: proc "c" (r_dest : ^Plane, p_a : _c.float, p_b : _c.float, p_c : _c.float, p_d : _c.float) ---;

    @(link_name="godot_plane_new_with_vectors")
    plane_new_with_vectors :: proc "c" (r_dest : ^Plane, p_v1 : ^Vector3, p_v2 : ^Vector3, p_v3 : ^Vector3) ---;

    @(link_name="godot_plane_new_with_normal")
    plane_new_with_normal :: proc "c" (r_dest : ^Plane, p_normal : ^Vector3, p_d : _c.float) ---;

    @(link_name="godot_plane_as_string")
    plane_as_string :: proc "c" (p_self : ^Plane) -> String ---;

    @(link_name="godot_plane_normalized")
    plane_normalized :: proc "c" (p_self : ^Plane) -> Plane ---;

    @(link_name="godot_plane_center")
    plane_center :: proc "c" (p_self : ^Plane) -> Vector3 ---;

    @(link_name="godot_plane_get_any_point")
    plane_get_any_point :: proc "c" (p_self : ^Plane) -> Vector3 ---;

    @(link_name="godot_plane_is_point_over")
    plane_is_point_over :: proc "c" (p_self : ^Plane, p_point : ^Vector3) -> Bool ---;

    @(link_name="godot_plane_distance_to")
    plane_distance_to :: proc "c" (p_self : ^Plane, p_point : ^Vector3) -> _c.float ---;

    @(link_name="godot_plane_has_point")
    plane_has_point :: proc "c" (p_self : ^Plane, p_point : ^Vector3, p_epsilon : _c.float) -> Bool ---;

    @(link_name="godot_plane_project")
    plane_project :: proc "c" (p_self : ^Plane, p_point : ^Vector3) -> Vector3 ---;

    @(link_name="godot_plane_intersect_3")
    plane_intersect_3 :: proc "c" (p_self : ^Plane, r_dest : ^Vector3, p_b : ^Plane, p_c : ^Plane) -> Bool ---;

    @(link_name="godot_plane_intersects_ray")
    plane_intersects_ray :: proc "c" (p_self : ^Plane, r_dest : ^Vector3, p_from : ^Vector3, p_dir : ^Vector3) -> Bool ---;

    @(link_name="godot_plane_intersects_segment")
    plane_intersects_segment :: proc "c" (p_self : ^Plane, r_dest : ^Vector3, p_begin : ^Vector3, p_end : ^Vector3) -> Bool ---;

    @(link_name="godot_plane_operator_neg")
    plane_operator_neg :: proc "c" (p_self : ^Plane) -> Plane ---;

    @(link_name="godot_plane_operator_equal")
    plane_operator_equal :: proc "c" (p_self : ^Plane, p_b : ^Plane) -> Bool ---;

    @(link_name="godot_plane_set_normal")
    plane_set_normal :: proc "c" (p_self : ^Plane, p_normal : ^Vector3) ---;

    @(link_name="godot_plane_get_normal")
    plane_get_normal :: proc "c" (p_self : ^Plane) -> Vector3 ---;

    @(link_name="godot_plane_get_d")
    plane_get_d :: proc "c" (p_self : ^Plane) -> _c.float ---;

    @(link_name="godot_plane_set_d")
    plane_set_d :: proc "c" (p_self : ^Plane, p_d : _c.float) ---;

    @(link_name="godot_pool_byte_array_new")
    pool_byte_array_new :: proc "c" (r_dest : ^PoolByteArray) ---;

    @(link_name="godot_pool_byte_array_new_copy")
    pool_byte_array_new_copy :: proc "c" (r_dest : ^PoolByteArray, p_src : ^PoolByteArray) ---;

    @(link_name="godot_pool_byte_array_new_with_array")
    pool_byte_array_new_with_array :: proc "c" (r_dest : ^PoolByteArray, p_a : ^Array) ---;

    @(link_name="godot_pool_byte_array_append")
    pool_byte_array_append :: proc "c" (p_self : ^PoolByteArray, p_data : u8) ---;

    @(link_name="godot_pool_byte_array_append_array")
    pool_byte_array_append_array :: proc "c" (p_self : ^PoolByteArray, p_array : ^PoolByteArray) ---;

    @(link_name="godot_pool_byte_array_insert")
    pool_byte_array_insert :: proc "c" (p_self : ^PoolByteArray, p_idx : _c.int, p_data : u8) -> Error ---;

    @(link_name="godot_pool_byte_array_invert")
    pool_byte_array_invert :: proc "c" (p_self : ^PoolByteArray) ---;

    @(link_name="godot_pool_byte_array_push_back")
    pool_byte_array_push_back :: proc "c" (p_self : ^PoolByteArray, p_data : u8) ---;

    @(link_name="godot_pool_byte_array_remove")
    pool_byte_array_remove :: proc "c" (p_self : ^PoolByteArray, p_idx : _c.int) ---;

    @(link_name="godot_pool_byte_array_resize")
    pool_byte_array_resize :: proc "c" (p_self : ^PoolByteArray, p_size : _c.int) ---;

    @(link_name="godot_pool_byte_array_read")
    pool_byte_array_read :: proc "c" (p_self : ^PoolByteArray) -> ^PoolByteArrayReadAccess ---;

    @(link_name="godot_pool_byte_array_write")
    pool_byte_array_write :: proc "c" (p_self : ^PoolByteArray) -> ^PoolByteArrayWriteAccess ---;

    @(link_name="godot_pool_byte_array_set")
    pool_byte_array_set :: proc "c" (p_self : ^PoolByteArray, p_idx : _c.int, p_data : u8) ---;

    @(link_name="godot_pool_byte_array_get")
    pool_byte_array_get :: proc "c" (p_self : ^PoolByteArray, p_idx : _c.int) -> u8 ---;

    @(link_name="godot_pool_byte_array_size")
    pool_byte_array_size :: proc "c" (p_self : ^PoolByteArray) -> _c.int ---;

    @(link_name="godot_pool_byte_array_empty")
    pool_byte_array_empty :: proc "c" (p_self : ^PoolByteArray) -> Bool ---;

    @(link_name="godot_pool_byte_array_destroy")
    pool_byte_array_destroy :: proc "c" (p_self : ^PoolByteArray) ---;

    @(link_name="godot_pool_int_array_new")
    pool_int_array_new :: proc "c" (r_dest : ^PoolIntArray) ---;

    @(link_name="godot_pool_int_array_new_copy")
    pool_int_array_new_copy :: proc "c" (r_dest : ^PoolIntArray, p_src : ^PoolIntArray) ---;

    @(link_name="godot_pool_int_array_new_with_array")
    pool_int_array_new_with_array :: proc "c" (r_dest : ^PoolIntArray, p_a : ^Array) ---;

    @(link_name="godot_pool_int_array_append")
    pool_int_array_append :: proc "c" (p_self : ^PoolIntArray, p_data : _c.int) ---;

    @(link_name="godot_pool_int_array_append_array")
    pool_int_array_append_array :: proc "c" (p_self : ^PoolIntArray, p_array : ^PoolIntArray) ---;

    @(link_name="godot_pool_int_array_insert")
    pool_int_array_insert :: proc "c" (p_self : ^PoolIntArray, p_idx : _c.int, p_data : _c.int) -> Error ---;

    @(link_name="godot_pool_int_array_invert")
    pool_int_array_invert :: proc "c" (p_self : ^PoolIntArray) ---;

    @(link_name="godot_pool_int_array_push_back")
    pool_int_array_push_back :: proc "c" (p_self : ^PoolIntArray, p_data : _c.int) ---;

    @(link_name="godot_pool_int_array_remove")
    pool_int_array_remove :: proc "c" (p_self : ^PoolIntArray, p_idx : _c.int) ---;

    @(link_name="godot_pool_int_array_resize")
    pool_int_array_resize :: proc "c" (p_self : ^PoolIntArray, p_size : _c.int) ---;

    @(link_name="godot_pool_int_array_read")
    pool_int_array_read :: proc "c" (p_self : ^PoolIntArray) -> ^PoolIntArrayReadAccess ---;

    @(link_name="godot_pool_int_array_write")
    pool_int_array_write :: proc "c" (p_self : ^PoolIntArray) -> ^PoolIntArrayWriteAccess ---;

    @(link_name="godot_pool_int_array_set")
    pool_int_array_set :: proc "c" (p_self : ^PoolIntArray, p_idx : _c.int, p_data : _c.int) ---;

    @(link_name="godot_pool_int_array_get")
    pool_int_array_get :: proc "c" (p_self : ^PoolIntArray, p_idx : _c.int) -> _c.int ---;

    @(link_name="godot_pool_int_array_size")
    pool_int_array_size :: proc "c" (p_self : ^PoolIntArray) -> _c.int ---;

    @(link_name="godot_pool_int_array_empty")
    pool_int_array_empty :: proc "c" (p_self : ^PoolIntArray) -> Bool ---;

    @(link_name="godot_pool_int_array_destroy")
    pool_int_array_destroy :: proc "c" (p_self : ^PoolIntArray) ---;

    @(link_name="godot_pool_real_array_new")
    pool_real_array_new :: proc "c" (r_dest : ^PoolRealArray) ---;

    @(link_name="godot_pool_real_array_new_copy")
    pool_real_array_new_copy :: proc "c" (r_dest : ^PoolRealArray, p_src : ^PoolRealArray) ---;

    @(link_name="godot_pool_real_array_new_with_array")
    pool_real_array_new_with_array :: proc "c" (r_dest : ^PoolRealArray, p_a : ^Array) ---;

    @(link_name="godot_pool_real_array_append")
    pool_real_array_append :: proc "c" (p_self : ^PoolRealArray, p_data : _c.float) ---;

    @(link_name="godot_pool_real_array_append_array")
    pool_real_array_append_array :: proc "c" (p_self : ^PoolRealArray, p_array : ^PoolRealArray) ---;

    @(link_name="godot_pool_real_array_insert")
    pool_real_array_insert :: proc "c" (p_self : ^PoolRealArray, p_idx : _c.int, p_data : _c.float) -> Error ---;

    @(link_name="godot_pool_real_array_invert")
    pool_real_array_invert :: proc "c" (p_self : ^PoolRealArray) ---;

    @(link_name="godot_pool_real_array_push_back")
    pool_real_array_push_back :: proc "c" (p_self : ^PoolRealArray, p_data : _c.float) ---;

    @(link_name="godot_pool_real_array_remove")
    pool_real_array_remove :: proc "c" (p_self : ^PoolRealArray, p_idx : _c.int) ---;

    @(link_name="godot_pool_real_array_resize")
    pool_real_array_resize :: proc "c" (p_self : ^PoolRealArray, p_size : _c.int) ---;

    @(link_name="godot_pool_real_array_read")
    pool_real_array_read :: proc "c" (p_self : ^PoolRealArray) -> ^PoolRealArrayReadAccess ---;

    @(link_name="godot_pool_real_array_write")
    pool_real_array_write :: proc "c" (p_self : ^PoolRealArray) -> ^PoolRealArrayWriteAccess ---;

    @(link_name="godot_pool_real_array_set")
    pool_real_array_set :: proc "c" (p_self : ^PoolRealArray, p_idx : _c.int, p_data : _c.float) ---;

    @(link_name="godot_pool_real_array_get")
    pool_real_array_get :: proc "c" (p_self : ^PoolRealArray, p_idx : _c.int) -> _c.float ---;

    @(link_name="godot_pool_real_array_size")
    pool_real_array_size :: proc "c" (p_self : ^PoolRealArray) -> _c.int ---;

    @(link_name="godot_pool_real_array_empty")
    pool_real_array_empty :: proc "c" (p_self : ^PoolRealArray) -> Bool ---;

    @(link_name="godot_pool_real_array_destroy")
    pool_real_array_destroy :: proc "c" (p_self : ^PoolRealArray) ---;

    @(link_name="godot_pool_string_array_new")
    pool_string_array_new :: proc "c" (r_dest : ^PoolStringArray) ---;

    @(link_name="godot_pool_string_array_new_copy")
    pool_string_array_new_copy :: proc "c" (r_dest : ^PoolStringArray, p_src : ^PoolStringArray) ---;

    @(link_name="godot_pool_string_array_new_with_array")
    pool_string_array_new_with_array :: proc "c" (r_dest : ^PoolStringArray, p_a : ^Array) ---;

    @(link_name="godot_pool_string_array_append")
    pool_string_array_append :: proc "c" (p_self : ^PoolStringArray, p_data : ^String) ---;

    @(link_name="godot_pool_string_array_append_array")
    pool_string_array_append_array :: proc "c" (p_self : ^PoolStringArray, p_array : ^PoolStringArray) ---;

    @(link_name="godot_pool_string_array_insert")
    pool_string_array_insert :: proc "c" (p_self : ^PoolStringArray, p_idx : _c.int, p_data : ^String) -> Error ---;

    @(link_name="godot_pool_string_array_invert")
    pool_string_array_invert :: proc "c" (p_self : ^PoolStringArray) ---;

    @(link_name="godot_pool_string_array_push_back")
    pool_string_array_push_back :: proc "c" (p_self : ^PoolStringArray, p_data : ^String) ---;

    @(link_name="godot_pool_string_array_remove")
    pool_string_array_remove :: proc "c" (p_self : ^PoolStringArray, p_idx : _c.int) ---;

    @(link_name="godot_pool_string_array_resize")
    pool_string_array_resize :: proc "c" (p_self : ^PoolStringArray, p_size : _c.int) ---;

    @(link_name="godot_pool_string_array_read")
    pool_string_array_read :: proc "c" (p_self : ^PoolStringArray) -> ^PoolStringArrayReadAccess ---;

    @(link_name="godot_pool_string_array_write")
    pool_string_array_write :: proc "c" (p_self : ^PoolStringArray) -> ^PoolStringArrayWriteAccess ---;

    @(link_name="godot_pool_string_array_set")
    pool_string_array_set :: proc "c" (p_self : ^PoolStringArray, p_idx : _c.int, p_data : ^String) ---;

    @(link_name="godot_pool_string_array_get")
    pool_string_array_get :: proc "c" (p_self : ^PoolStringArray, p_idx : _c.int) -> String ---;

    @(link_name="godot_pool_string_array_size")
    pool_string_array_size :: proc "c" (p_self : ^PoolStringArray) -> _c.int ---;

    @(link_name="godot_pool_string_array_empty")
    pool_string_array_empty :: proc "c" (p_self : ^PoolStringArray) -> Bool ---;

    @(link_name="godot_pool_string_array_destroy")
    pool_string_array_destroy :: proc "c" (p_self : ^PoolStringArray) ---;

    @(link_name="godot_pool_vector2_array_new")
    pool_vector2_array_new :: proc "c" (r_dest : ^PoolVector2Array) ---;

    @(link_name="godot_pool_vector2_array_new_copy")
    pool_vector2_array_new_copy :: proc "c" (r_dest : ^PoolVector2Array, p_src : ^PoolVector2Array) ---;

    @(link_name="godot_pool_vector2_array_new_with_array")
    pool_vector2_array_new_with_array :: proc "c" (r_dest : ^PoolVector2Array, p_a : ^Array) ---;

    @(link_name="godot_pool_vector2_array_append")
    pool_vector2_array_append :: proc "c" (p_self : ^PoolVector2Array, p_data : ^Vector2) ---;

    @(link_name="godot_pool_vector2_array_append_array")
    pool_vector2_array_append_array :: proc "c" (p_self : ^PoolVector2Array, p_array : ^PoolVector2Array) ---;

    @(link_name="godot_pool_vector2_array_insert")
    pool_vector2_array_insert :: proc "c" (p_self : ^PoolVector2Array, p_idx : _c.int, p_data : ^Vector2) -> Error ---;

    @(link_name="godot_pool_vector2_array_invert")
    pool_vector2_array_invert :: proc "c" (p_self : ^PoolVector2Array) ---;

    @(link_name="godot_pool_vector2_array_push_back")
    pool_vector2_array_push_back :: proc "c" (p_self : ^PoolVector2Array, p_data : ^Vector2) ---;

    @(link_name="godot_pool_vector2_array_remove")
    pool_vector2_array_remove :: proc "c" (p_self : ^PoolVector2Array, p_idx : _c.int) ---;

    @(link_name="godot_pool_vector2_array_resize")
    pool_vector2_array_resize :: proc "c" (p_self : ^PoolVector2Array, p_size : _c.int) ---;

    @(link_name="godot_pool_vector2_array_read")
    pool_vector2_array_read :: proc "c" (p_self : ^PoolVector2Array) -> ^PoolVector2ArrayReadAccess ---;

    @(link_name="godot_pool_vector2_array_write")
    pool_vector2_array_write :: proc "c" (p_self : ^PoolVector2Array) -> ^PoolVector2ArrayWriteAccess ---;

    @(link_name="godot_pool_vector2_array_set")
    pool_vector2_array_set :: proc "c" (p_self : ^PoolVector2Array, p_idx : _c.int, p_data : ^Vector2) ---;

    @(link_name="godot_pool_vector2_array_get")
    pool_vector2_array_get :: proc "c" (p_self : ^PoolVector2Array, p_idx : _c.int) -> Vector2 ---;

    @(link_name="godot_pool_vector2_array_size")
    pool_vector2_array_size :: proc "c" (p_self : ^PoolVector2Array) -> _c.int ---;

    @(link_name="godot_pool_vector2_array_empty")
    pool_vector2_array_empty :: proc "c" (p_self : ^PoolVector2Array) -> Bool ---;

    @(link_name="godot_pool_vector2_array_destroy")
    pool_vector2_array_destroy :: proc "c" (p_self : ^PoolVector2Array) ---;

    @(link_name="godot_pool_vector3_array_new")
    pool_vector3_array_new :: proc "c" (r_dest : ^PoolVector3Array) ---;

    @(link_name="godot_pool_vector3_array_new_copy")
    pool_vector3_array_new_copy :: proc "c" (r_dest : ^PoolVector3Array, p_src : ^PoolVector3Array) ---;

    @(link_name="godot_pool_vector3_array_new_with_array")
    pool_vector3_array_new_with_array :: proc "c" (r_dest : ^PoolVector3Array, p_a : ^Array) ---;

    @(link_name="godot_pool_vector3_array_append")
    pool_vector3_array_append :: proc "c" (p_self : ^PoolVector3Array, p_data : ^Vector3) ---;

    @(link_name="godot_pool_vector3_array_append_array")
    pool_vector3_array_append_array :: proc "c" (p_self : ^PoolVector3Array, p_array : ^PoolVector3Array) ---;

    @(link_name="godot_pool_vector3_array_insert")
    pool_vector3_array_insert :: proc "c" (p_self : ^PoolVector3Array, p_idx : _c.int, p_data : ^Vector3) -> Error ---;

    @(link_name="godot_pool_vector3_array_invert")
    pool_vector3_array_invert :: proc "c" (p_self : ^PoolVector3Array) ---;

    @(link_name="godot_pool_vector3_array_push_back")
    pool_vector3_array_push_back :: proc "c" (p_self : ^PoolVector3Array, p_data : ^Vector3) ---;

    @(link_name="godot_pool_vector3_array_remove")
    pool_vector3_array_remove :: proc "c" (p_self : ^PoolVector3Array, p_idx : _c.int) ---;

    @(link_name="godot_pool_vector3_array_resize")
    pool_vector3_array_resize :: proc "c" (p_self : ^PoolVector3Array, p_size : _c.int) ---;

    @(link_name="godot_pool_vector3_array_read")
    pool_vector3_array_read :: proc "c" (p_self : ^PoolVector3Array) -> ^PoolVector3ArrayReadAccess ---;

    @(link_name="godot_pool_vector3_array_write")
    pool_vector3_array_write :: proc "c" (p_self : ^PoolVector3Array) -> ^PoolVector3ArrayWriteAccess ---;

    @(link_name="godot_pool_vector3_array_set")
    pool_vector3_array_set :: proc "c" (p_self : ^PoolVector3Array, p_idx : _c.int, p_data : ^Vector3) ---;

    @(link_name="godot_pool_vector3_array_get")
    pool_vector3_array_get :: proc "c" (p_self : ^PoolVector3Array, p_idx : _c.int) -> Vector3 ---;

    @(link_name="godot_pool_vector3_array_size")
    pool_vector3_array_size :: proc "c" (p_self : ^PoolVector3Array) -> _c.int ---;

    @(link_name="godot_pool_vector3_array_empty")
    pool_vector3_array_empty :: proc "c" (p_self : ^PoolVector3Array) -> Bool ---;

    @(link_name="godot_pool_vector3_array_destroy")
    pool_vector3_array_destroy :: proc "c" (p_self : ^PoolVector3Array) ---;

    @(link_name="godot_pool_color_array_new")
    pool_color_array_new :: proc "c" (r_dest : ^PoolColorArray) ---;

    @(link_name="godot_pool_color_array_new_copy")
    pool_color_array_new_copy :: proc "c" (r_dest : ^PoolColorArray, p_src : ^PoolColorArray) ---;

    @(link_name="godot_pool_color_array_new_with_array")
    pool_color_array_new_with_array :: proc "c" (r_dest : ^PoolColorArray, p_a : ^Array) ---;

    @(link_name="godot_pool_color_array_append")
    pool_color_array_append :: proc "c" (p_self : ^PoolColorArray, p_data : ^Color) ---;

    @(link_name="godot_pool_color_array_append_array")
    pool_color_array_append_array :: proc "c" (p_self : ^PoolColorArray, p_array : ^PoolColorArray) ---;

    @(link_name="godot_pool_color_array_insert")
    pool_color_array_insert :: proc "c" (p_self : ^PoolColorArray, p_idx : _c.int, p_data : ^Color) -> Error ---;

    @(link_name="godot_pool_color_array_invert")
    pool_color_array_invert :: proc "c" (p_self : ^PoolColorArray) ---;

    @(link_name="godot_pool_color_array_push_back")
    pool_color_array_push_back :: proc "c" (p_self : ^PoolColorArray, p_data : ^Color) ---;

    @(link_name="godot_pool_color_array_remove")
    pool_color_array_remove :: proc "c" (p_self : ^PoolColorArray, p_idx : _c.int) ---;

    @(link_name="godot_pool_color_array_resize")
    pool_color_array_resize :: proc "c" (p_self : ^PoolColorArray, p_size : _c.int) ---;

    @(link_name="godot_pool_color_array_read")
    pool_color_array_read :: proc "c" (p_self : ^PoolColorArray) -> ^PoolColorArrayReadAccess ---;

    @(link_name="godot_pool_color_array_write")
    pool_color_array_write :: proc "c" (p_self : ^PoolColorArray) -> ^PoolColorArrayWriteAccess ---;

    @(link_name="godot_pool_color_array_set")
    pool_color_array_set :: proc "c" (p_self : ^PoolColorArray, p_idx : _c.int, p_data : ^Color) ---;

    @(link_name="godot_pool_color_array_get")
    pool_color_array_get :: proc "c" (p_self : ^PoolColorArray, p_idx : _c.int) -> Color ---;

    @(link_name="godot_pool_color_array_size")
    pool_color_array_size :: proc "c" (p_self : ^PoolColorArray) -> _c.int ---;

    @(link_name="godot_pool_color_array_empty")
    pool_color_array_empty :: proc "c" (p_self : ^PoolColorArray) -> Bool ---;

    @(link_name="godot_pool_color_array_destroy")
    pool_color_array_destroy :: proc "c" (p_self : ^PoolColorArray) ---;

    @(link_name="godot_pool_byte_array_read_access_copy")
    pool_byte_array_read_access_copy :: proc "c" (p_other : ^PoolByteArrayReadAccess) -> ^PoolByteArrayReadAccess ---;

    @(link_name="godot_pool_byte_array_read_access_ptr")
    pool_byte_array_read_access_ptr :: proc "c" (p_read : ^PoolByteArrayReadAccess) -> ^u8 ---;

    @(link_name="godot_pool_byte_array_read_access_operator_assign")
    pool_byte_array_read_access_operator_assign :: proc "c" (p_read : ^PoolByteArrayReadAccess, p_other : ^PoolByteArrayReadAccess) ---;

    @(link_name="godot_pool_byte_array_read_access_destroy")
    pool_byte_array_read_access_destroy :: proc "c" (p_read : ^PoolByteArrayReadAccess) ---;

    @(link_name="godot_pool_int_array_read_access_copy")
    pool_int_array_read_access_copy :: proc "c" (p_other : ^PoolIntArrayReadAccess) -> ^PoolIntArrayReadAccess ---;

    @(link_name="godot_pool_int_array_read_access_ptr")
    pool_int_array_read_access_ptr :: proc "c" (p_read : ^PoolIntArrayReadAccess) -> ^_c.int ---;

    @(link_name="godot_pool_int_array_read_access_operator_assign")
    pool_int_array_read_access_operator_assign :: proc "c" (p_read : ^PoolIntArrayReadAccess, p_other : ^PoolIntArrayReadAccess) ---;

    @(link_name="godot_pool_int_array_read_access_destroy")
    pool_int_array_read_access_destroy :: proc "c" (p_read : ^PoolIntArrayReadAccess) ---;

    @(link_name="godot_pool_real_array_read_access_copy")
    pool_real_array_read_access_copy :: proc "c" (p_other : ^PoolRealArrayReadAccess) -> ^PoolRealArrayReadAccess ---;

    @(link_name="godot_pool_real_array_read_access_ptr")
    pool_real_array_read_access_ptr :: proc "c" (p_read : ^PoolRealArrayReadAccess) -> ^_c.float ---;

    @(link_name="godot_pool_real_array_read_access_operator_assign")
    pool_real_array_read_access_operator_assign :: proc "c" (p_read : ^PoolRealArrayReadAccess, p_other : ^PoolRealArrayReadAccess) ---;

    @(link_name="godot_pool_real_array_read_access_destroy")
    pool_real_array_read_access_destroy :: proc "c" (p_read : ^PoolRealArrayReadAccess) ---;

    @(link_name="godot_pool_string_array_read_access_copy")
    pool_string_array_read_access_copy :: proc "c" (p_other : ^PoolStringArrayReadAccess) -> ^PoolStringArrayReadAccess ---;

    @(link_name="godot_pool_string_array_read_access_ptr")
    pool_string_array_read_access_ptr :: proc "c" (p_read : ^PoolStringArrayReadAccess) -> ^String ---;

    @(link_name="godot_pool_string_array_read_access_operator_assign")
    pool_string_array_read_access_operator_assign :: proc "c" (p_read : ^PoolStringArrayReadAccess, p_other : ^PoolStringArrayReadAccess) ---;

    @(link_name="godot_pool_string_array_read_access_destroy")
    pool_string_array_read_access_destroy :: proc "c" (p_read : ^PoolStringArrayReadAccess) ---;

    @(link_name="godot_pool_vector2_array_read_access_copy")
    pool_vector2_array_read_access_copy :: proc "c" (p_other : ^PoolVector2ArrayReadAccess) -> ^PoolVector2ArrayReadAccess ---;

    @(link_name="godot_pool_vector2_array_read_access_ptr")
    pool_vector2_array_read_access_ptr :: proc "c" (p_read : ^PoolVector2ArrayReadAccess) -> ^Vector2 ---;

    @(link_name="godot_pool_vector2_array_read_access_operator_assign")
    pool_vector2_array_read_access_operator_assign :: proc "c" (p_read : ^PoolVector2ArrayReadAccess, p_other : ^PoolVector2ArrayReadAccess) ---;

    @(link_name="godot_pool_vector2_array_read_access_destroy")
    pool_vector2_array_read_access_destroy :: proc "c" (p_read : ^PoolVector2ArrayReadAccess) ---;

    @(link_name="godot_pool_vector3_array_read_access_copy")
    pool_vector3_array_read_access_copy :: proc "c" (p_other : ^PoolVector3ArrayReadAccess) -> ^PoolVector3ArrayReadAccess ---;

    @(link_name="godot_pool_vector3_array_read_access_ptr")
    pool_vector3_array_read_access_ptr :: proc "c" (p_read : ^PoolVector3ArrayReadAccess) -> ^Vector3 ---;

    @(link_name="godot_pool_vector3_array_read_access_operator_assign")
    pool_vector3_array_read_access_operator_assign :: proc "c" (p_read : ^PoolVector3ArrayReadAccess, p_other : ^PoolVector3ArrayReadAccess) ---;

    @(link_name="godot_pool_vector3_array_read_access_destroy")
    pool_vector3_array_read_access_destroy :: proc "c" (p_read : ^PoolVector3ArrayReadAccess) ---;

    @(link_name="godot_pool_color_array_read_access_copy")
    pool_color_array_read_access_copy :: proc "c" (p_other : ^PoolColorArrayReadAccess) -> ^PoolColorArrayReadAccess ---;

    @(link_name="godot_pool_color_array_read_access_ptr")
    pool_color_array_read_access_ptr :: proc "c" (p_read : ^PoolColorArrayReadAccess) -> ^Color ---;

    @(link_name="godot_pool_color_array_read_access_operator_assign")
    pool_color_array_read_access_operator_assign :: proc "c" (p_read : ^PoolColorArrayReadAccess, p_other : ^PoolColorArrayReadAccess) ---;

    @(link_name="godot_pool_color_array_read_access_destroy")
    pool_color_array_read_access_destroy :: proc "c" (p_read : ^PoolColorArrayReadAccess) ---;

    @(link_name="godot_pool_byte_array_write_access_copy")
    pool_byte_array_write_access_copy :: proc "c" (p_other : ^PoolByteArrayWriteAccess) -> ^PoolByteArrayWriteAccess ---;

    @(link_name="godot_pool_byte_array_write_access_ptr")
    pool_byte_array_write_access_ptr :: proc "c" (p_write : ^PoolByteArrayWriteAccess) -> ^u8 ---;

    @(link_name="godot_pool_byte_array_write_access_operator_assign")
    pool_byte_array_write_access_operator_assign :: proc "c" (p_write : ^PoolByteArrayWriteAccess, p_other : ^PoolByteArrayWriteAccess) ---;

    @(link_name="godot_pool_byte_array_write_access_destroy")
    pool_byte_array_write_access_destroy :: proc "c" (p_write : ^PoolByteArrayWriteAccess) ---;

    @(link_name="godot_pool_int_array_write_access_copy")
    pool_int_array_write_access_copy :: proc "c" (p_other : ^PoolIntArrayWriteAccess) -> ^PoolIntArrayWriteAccess ---;

    @(link_name="godot_pool_int_array_write_access_ptr")
    pool_int_array_write_access_ptr :: proc "c" (p_write : ^PoolIntArrayWriteAccess) -> ^_c.int ---;

    @(link_name="godot_pool_int_array_write_access_operator_assign")
    pool_int_array_write_access_operator_assign :: proc "c" (p_write : ^PoolIntArrayWriteAccess, p_other : ^PoolIntArrayWriteAccess) ---;

    @(link_name="godot_pool_int_array_write_access_destroy")
    pool_int_array_write_access_destroy :: proc "c" (p_write : ^PoolIntArrayWriteAccess) ---;

    @(link_name="godot_pool_real_array_write_access_copy")
    pool_real_array_write_access_copy :: proc "c" (p_other : ^PoolRealArrayWriteAccess) -> ^PoolRealArrayWriteAccess ---;

    @(link_name="godot_pool_real_array_write_access_ptr")
    pool_real_array_write_access_ptr :: proc "c" (p_write : ^PoolRealArrayWriteAccess) -> ^_c.float ---;

    @(link_name="godot_pool_real_array_write_access_operator_assign")
    pool_real_array_write_access_operator_assign :: proc "c" (p_write : ^PoolRealArrayWriteAccess, p_other : ^PoolRealArrayWriteAccess) ---;

    @(link_name="godot_pool_real_array_write_access_destroy")
    pool_real_array_write_access_destroy :: proc "c" (p_write : ^PoolRealArrayWriteAccess) ---;

    @(link_name="godot_pool_string_array_write_access_copy")
    pool_string_array_write_access_copy :: proc "c" (p_other : ^PoolStringArrayWriteAccess) -> ^PoolStringArrayWriteAccess ---;

    @(link_name="godot_pool_string_array_write_access_ptr")
    pool_string_array_write_access_ptr :: proc "c" (p_write : ^PoolStringArrayWriteAccess) -> ^String ---;

    @(link_name="godot_pool_string_array_write_access_operator_assign")
    pool_string_array_write_access_operator_assign :: proc "c" (p_write : ^PoolStringArrayWriteAccess, p_other : ^PoolStringArrayWriteAccess) ---;

    @(link_name="godot_pool_string_array_write_access_destroy")
    pool_string_array_write_access_destroy :: proc "c" (p_write : ^PoolStringArrayWriteAccess) ---;

    @(link_name="godot_pool_vector2_array_write_access_copy")
    pool_vector2_array_write_access_copy :: proc "c" (p_other : ^PoolVector2ArrayWriteAccess) -> ^PoolVector2ArrayWriteAccess ---;

    @(link_name="godot_pool_vector2_array_write_access_ptr")
    pool_vector2_array_write_access_ptr :: proc "c" (p_write : ^PoolVector2ArrayWriteAccess) -> ^Vector2 ---;

    @(link_name="godot_pool_vector2_array_write_access_operator_assign")
    pool_vector2_array_write_access_operator_assign :: proc "c" (p_write : ^PoolVector2ArrayWriteAccess, p_other : ^PoolVector2ArrayWriteAccess) ---;

    @(link_name="godot_pool_vector2_array_write_access_destroy")
    pool_vector2_array_write_access_destroy :: proc "c" (p_write : ^PoolVector2ArrayWriteAccess) ---;

    @(link_name="godot_pool_vector3_array_write_access_copy")
    pool_vector3_array_write_access_copy :: proc "c" (p_other : ^PoolVector3ArrayWriteAccess) -> ^PoolVector3ArrayWriteAccess ---;

    @(link_name="godot_pool_vector3_array_write_access_ptr")
    pool_vector3_array_write_access_ptr :: proc "c" (p_write : ^PoolVector3ArrayWriteAccess) -> ^Vector3 ---;

    @(link_name="godot_pool_vector3_array_write_access_operator_assign")
    pool_vector3_array_write_access_operator_assign :: proc "c" (p_write : ^PoolVector3ArrayWriteAccess, p_other : ^PoolVector3ArrayWriteAccess) ---;

    @(link_name="godot_pool_vector3_array_write_access_destroy")
    pool_vector3_array_write_access_destroy :: proc "c" (p_write : ^PoolVector3ArrayWriteAccess) ---;

    @(link_name="godot_pool_color_array_write_access_copy")
    pool_color_array_write_access_copy :: proc "c" (p_other : ^PoolColorArrayWriteAccess) -> ^PoolColorArrayWriteAccess ---;

    @(link_name="godot_pool_color_array_write_access_ptr")
    pool_color_array_write_access_ptr :: proc "c" (p_write : ^PoolColorArrayWriteAccess) -> ^Color ---;

    @(link_name="godot_pool_color_array_write_access_operator_assign")
    pool_color_array_write_access_operator_assign :: proc "c" (p_write : ^PoolColorArrayWriteAccess, p_other : ^PoolColorArrayWriteAccess) ---;

    @(link_name="godot_pool_color_array_write_access_destroy")
    pool_color_array_write_access_destroy :: proc "c" (p_write : ^PoolColorArrayWriteAccess) ---;

    @(link_name="godot_quat_new")
    quat_new :: proc "c" (r_dest : ^Quat, p_x : _c.float, p_y : _c.float, p_z : _c.float, p_w : _c.float) ---;

    @(link_name="godot_quat_new_with_axis_angle")
    quat_new_with_axis_angle :: proc "c" (r_dest : ^Quat, p_axis : ^Vector3, p_angle : _c.float) ---;

    @(link_name="godot_quat_new_with_basis")
    quat_new_with_basis :: proc "c" (r_dest : ^Quat, p_basis : ^Basis) ---;

    @(link_name="godot_quat_new_with_euler")
    quat_new_with_euler :: proc "c" (r_dest : ^Quat, p_euler : ^Vector3) ---;

    @(link_name="godot_quat_get_x")
    quat_get_x :: proc "c" (p_self : ^Quat) -> _c.float ---;

    @(link_name="godot_quat_set_x")
    quat_set_x :: proc "c" (p_self : ^Quat, val : _c.float) ---;

    @(link_name="godot_quat_get_y")
    quat_get_y :: proc "c" (p_self : ^Quat) -> _c.float ---;

    @(link_name="godot_quat_set_y")
    quat_set_y :: proc "c" (p_self : ^Quat, val : _c.float) ---;

    @(link_name="godot_quat_get_z")
    quat_get_z :: proc "c" (p_self : ^Quat) -> _c.float ---;

    @(link_name="godot_quat_set_z")
    quat_set_z :: proc "c" (p_self : ^Quat, val : _c.float) ---;

    @(link_name="godot_quat_get_w")
    quat_get_w :: proc "c" (p_self : ^Quat) -> _c.float ---;

    @(link_name="godot_quat_set_w")
    quat_set_w :: proc "c" (p_self : ^Quat, val : _c.float) ---;

    @(link_name="godot_quat_as_string")
    quat_as_string :: proc "c" (p_self : ^Quat) -> String ---;

    @(link_name="godot_quat_length")
    quat_length :: proc "c" (p_self : ^Quat) -> _c.float ---;

    @(link_name="godot_quat_length_squared")
    quat_length_squared :: proc "c" (p_self : ^Quat) -> _c.float ---;

    @(link_name="godot_quat_normalized")
    quat_normalized :: proc "c" (p_self : ^Quat) -> Quat ---;

    @(link_name="godot_quat_is_normalized")
    quat_is_normalized :: proc "c" (p_self : ^Quat) -> Bool ---;

    @(link_name="godot_quat_inverse")
    quat_inverse :: proc "c" (p_self : ^Quat) -> Quat ---;

    @(link_name="godot_quat_dot")
    quat_dot :: proc "c" (p_self : ^Quat, p_b : ^Quat) -> _c.float ---;

    @(link_name="godot_quat_xform")
    quat_xform :: proc "c" (p_self : ^Quat, p_v : ^Vector3) -> Vector3 ---;

    @(link_name="godot_quat_slerp")
    quat_slerp :: proc "c" (p_self : ^Quat, p_b : ^Quat, p_t : _c.float) -> Quat ---;

    @(link_name="godot_quat_slerpni")
    quat_slerpni :: proc "c" (p_self : ^Quat, p_b : ^Quat, p_t : _c.float) -> Quat ---;

    @(link_name="godot_quat_cubic_slerp")
    quat_cubic_slerp :: proc "c" (p_self : ^Quat, p_b : ^Quat, p_pre_a : ^Quat, p_post_b : ^Quat, p_t : _c.float) -> Quat ---;

    @(link_name="godot_quat_operator_multiply")
    quat_operator_multiply :: proc "c" (p_self : ^Quat, p_b : _c.float) -> Quat ---;

    @(link_name="godot_quat_operator_add")
    quat_operator_add :: proc "c" (p_self : ^Quat, p_b : ^Quat) -> Quat ---;

    @(link_name="godot_quat_operator_subtract")
    quat_operator_subtract :: proc "c" (p_self : ^Quat, p_b : ^Quat) -> Quat ---;

    @(link_name="godot_quat_operator_divide")
    quat_operator_divide :: proc "c" (p_self : ^Quat, p_b : _c.float) -> Quat ---;

    @(link_name="godot_quat_operator_equal")
    quat_operator_equal :: proc "c" (p_self : ^Quat, p_b : ^Quat) -> Bool ---;

    @(link_name="godot_quat_operator_neg")
    quat_operator_neg :: proc "c" (p_self : ^Quat) -> Quat ---;

    @(link_name="godot_quat_set_axis_angle")
    quat_set_axis_angle :: proc "c" (p_self : ^Quat, p_axis : ^Vector3, p_angle : _c.float) ---;

    @(link_name="godot_rect2_new_with_position_and_size")
    rect2_new_with_position_and_size :: proc "c" (r_dest : ^Rect2, p_pos : ^Vector2, p_size : ^Vector2) ---;

    @(link_name="godot_rect2_new")
    rect2_new :: proc "c" (r_dest : ^Rect2, p_x : _c.float, p_y : _c.float, p_width : _c.float, p_height : _c.float) ---;

    @(link_name="godot_rect2_as_string")
    rect2_as_string :: proc "c" (p_self : ^Rect2) -> String ---;

    @(link_name="godot_rect2_get_area")
    rect2_get_area :: proc "c" (p_self : ^Rect2) -> _c.float ---;

    @(link_name="godot_rect2_intersects")
    rect2_intersects :: proc "c" (p_self : ^Rect2, p_b : ^Rect2) -> Bool ---;

    @(link_name="godot_rect2_encloses")
    rect2_encloses :: proc "c" (p_self : ^Rect2, p_b : ^Rect2) -> Bool ---;

    @(link_name="godot_rect2_has_no_area")
    rect2_has_no_area :: proc "c" (p_self : ^Rect2) -> Bool ---;

    @(link_name="godot_rect2_clip")
    rect2_clip :: proc "c" (p_self : ^Rect2, p_b : ^Rect2) -> Rect2 ---;

    @(link_name="godot_rect2_merge")
    rect2_merge :: proc "c" (p_self : ^Rect2, p_b : ^Rect2) -> Rect2 ---;

    @(link_name="godot_rect2_has_point")
    rect2_has_point :: proc "c" (p_self : ^Rect2, p_point : ^Vector2) -> Bool ---;

    @(link_name="godot_rect2_grow")
    rect2_grow :: proc "c" (p_self : ^Rect2, p_by : _c.float) -> Rect2 ---;

    @(link_name="godot_rect2_grow_individual")
    rect2_grow_individual :: proc "c" (p_self : ^Rect2, p_left : _c.float, p_top : _c.float, p_right : _c.float, p_bottom : _c.float) -> Rect2 ---;

    @(link_name="godot_rect2_grow_margin")
    rect2_grow_margin :: proc "c" (p_self : ^Rect2, p_margin : _c.int, p_by : _c.float) -> Rect2 ---;

    @(link_name="godot_rect2_abs")
    rect2_abs :: proc "c" (p_self : ^Rect2) -> Rect2 ---;

    @(link_name="godot_rect2_expand")
    rect2_expand :: proc "c" (p_self : ^Rect2, p_to : ^Vector2) -> Rect2 ---;

    @(link_name="godot_rect2_operator_equal")
    rect2_operator_equal :: proc "c" (p_self : ^Rect2, p_b : ^Rect2) -> Bool ---;

    @(link_name="godot_rect2_get_position")
    rect2_get_position :: proc "c" (p_self : ^Rect2) -> Vector2 ---;

    @(link_name="godot_rect2_get_size")
    rect2_get_size :: proc "c" (p_self : ^Rect2) -> Vector2 ---;

    @(link_name="godot_rect2_set_position")
    rect2_set_position :: proc "c" (p_self : ^Rect2, p_pos : ^Vector2) ---;

    @(link_name="godot_rect2_set_size")
    rect2_set_size :: proc "c" (p_self : ^Rect2, p_size : ^Vector2) ---;

    @(link_name="godot_rid_new")
    rid_new :: proc "c" (r_dest : ^Rid) ---;

    @(link_name="godot_rid_get_id")
    rid_get_id :: proc "c" (p_self : ^Rid) -> _c.int ---;

    @(link_name="godot_rid_new_with_resource")
    rid_new_with_resource :: proc "c" (r_dest : ^Rid, p_from : rawptr) ---;

    @(link_name="godot_rid_operator_equal")
    rid_operator_equal :: proc "c" (p_self : ^Rid, p_b : ^Rid) -> Bool ---;

    @(link_name="godot_rid_operator_less")
    rid_operator_less :: proc "c" (p_self : ^Rid, p_b : ^Rid) -> Bool ---;

    @(link_name="godot_string_name_new")
    string_name_new :: proc "c" (r_dest : ^StringName, p_name : ^String) ---;

    @(link_name="godot_string_name_new_data")
    string_name_new_data :: proc "c" (r_dest : ^StringName, p_name : cstring) ---;

    @(link_name="godot_string_name_get_name")
    string_name_get_name :: proc "c" (p_self : ^StringName) -> String ---;

    @(link_name="godot_string_name_get_hash")
    string_name_get_hash :: proc "c" (p_self : ^StringName) -> u32 ---;

    @(link_name="godot_string_name_get_data_unique_pointer")
    string_name_get_data_unique_pointer :: proc "c" (p_self : ^StringName) -> rawptr ---;

    @(link_name="godot_string_name_operator_equal")
    string_name_operator_equal :: proc "c" (p_self : ^StringName, p_other : ^StringName) -> Bool ---;

    @(link_name="godot_string_name_operator_less")
    string_name_operator_less :: proc "c" (p_self : ^StringName, p_other : ^StringName) -> Bool ---;

    @(link_name="godot_string_name_destroy")
    string_name_destroy :: proc "c" (p_self : ^StringName) ---;

    @(link_name="godot_char_string_length")
    char_string_length :: proc "c" (p_cs : ^CharString) -> _c.int ---;

    @(link_name="godot_char_string_get_data")
    char_string_get_data :: proc "c" (p_cs : ^CharString) -> cstring ---;

    @(link_name="godot_char_string_destroy")
    char_string_destroy :: proc "c" (p_cs : ^CharString) ---;

    @(link_name="godot_string_new")
    string_new :: proc "c" (r_dest : ^String) ---;

    @(link_name="godot_string_new_copy")
    string_new_copy :: proc "c" (r_dest : ^String, p_src : ^String) ---;

    @(link_name="godot_string_new_with_wide_string")
    string_new_with_wide_string :: proc "c" (r_dest : ^String, p_contents : ^_c.wchar_t, p_size : _c.int) ---;

    @(link_name="godot_string_operator_index")
    string_operator_index :: proc "c" (p_self : ^String, p_idx : _c.int) -> ^_c.wchar_t ---;

    @(link_name="godot_string_operator_index_const")
    string_operator_index_const :: proc "c" (p_self : ^String, p_idx : _c.int) -> _c.wchar_t ---;

    @(link_name="godot_string_wide_str")
    string_wide_str :: proc "c" (p_self : ^String) -> ^_c.wchar_t ---;

    @(link_name="godot_string_operator_equal")
    string_operator_equal :: proc "c" (p_self : ^String, p_b : ^String) -> Bool ---;

    @(link_name="godot_string_operator_less")
    string_operator_less :: proc "c" (p_self : ^String, p_b : ^String) -> Bool ---;

    @(link_name="godot_string_operator_plus")
    string_operator_plus :: proc "c" (p_self : ^String, p_b : ^String) -> String ---;

    @(link_name="godot_string_length")
    string_length :: proc "c" (p_self : ^String) -> _c.int ---;

    @(link_name="godot_string_casecmp_to")
    string_casecmp_to :: proc "c" (p_self : ^String, p_str : ^String) -> _c.schar ---;

    @(link_name="godot_string_nocasecmp_to")
    string_nocasecmp_to :: proc "c" (p_self : ^String, p_str : ^String) -> _c.schar ---;

    @(link_name="godot_string_naturalnocasecmp_to")
    string_naturalnocasecmp_to :: proc "c" (p_self : ^String, p_str : ^String) -> _c.schar ---;

    @(link_name="godot_string_begins_with")
    string_begins_with :: proc "c" (p_self : ^String, p_string : ^String) -> Bool ---;

    @(link_name="godot_string_begins_with_char_array")
    string_begins_with_char_array :: proc "c" (p_self : ^String, p_char_array : cstring) -> Bool ---;

    @(link_name="godot_string_bigrams")
    string_bigrams :: proc "c" (p_self : ^String) -> Array ---;

    @(link_name="godot_string_chr")
    string_chr :: proc "c" (p_character : _c.wchar_t) -> String ---;

    @(link_name="godot_string_ends_with")
    string_ends_with :: proc "c" (p_self : ^String, p_string : ^String) -> Bool ---;

    @(link_name="godot_string_count")
    string_count :: proc "c" (p_self : ^String, p_what : String, p_from : _c.int, p_to : _c.int) -> _c.int ---;

    @(link_name="godot_string_countn")
    string_countn :: proc "c" (p_self : ^String, p_what : String, p_from : _c.int, p_to : _c.int) -> _c.int ---;

    @(link_name="godot_string_find")
    string_find :: proc "c" (p_self : ^String, p_what : String) -> _c.int ---;

    @(link_name="godot_string_find_from")
    string_find_from :: proc "c" (p_self : ^String, p_what : String, p_from : _c.int) -> _c.int ---;

    @(link_name="godot_string_findmk")
    string_findmk :: proc "c" (p_self : ^String, p_keys : ^Array) -> _c.int ---;

    @(link_name="godot_string_findmk_from")
    string_findmk_from :: proc "c" (p_self : ^String, p_keys : ^Array, p_from : _c.int) -> _c.int ---;

    @(link_name="godot_string_findmk_from_in_place")
    string_findmk_from_in_place :: proc "c" (p_self : ^String, p_keys : ^Array, p_from : _c.int, r_key : ^_c.int) -> _c.int ---;

    @(link_name="godot_string_findn")
    string_findn :: proc "c" (p_self : ^String, p_what : String) -> _c.int ---;

    @(link_name="godot_string_findn_from")
    string_findn_from :: proc "c" (p_self : ^String, p_what : String, p_from : _c.int) -> _c.int ---;

    @(link_name="godot_string_find_last")
    string_find_last :: proc "c" (p_self : ^String, p_what : String) -> _c.int ---;

    @(link_name="godot_string_format")
    string_format :: proc "c" (p_self : ^String, p_values : ^Variant) -> String ---;

    @(link_name="godot_string_format_with_custom_placeholder")
    string_format_with_custom_placeholder :: proc "c" (p_self : ^String, p_values : ^Variant, p_placeholder : cstring) -> String ---;

    @(link_name="godot_string_hex_encode_buffer")
    string_hex_encode_buffer :: proc "c" (p_buffer : ^u8, p_len : _c.int) -> String ---;

    @(link_name="godot_string_hex_to_int")
    string_hex_to_int :: proc "c" (p_self : ^String) -> _c.int ---;

    @(link_name="godot_string_hex_to_int_without_prefix")
    string_hex_to_int_without_prefix :: proc "c" (p_self : ^String) -> _c.int ---;

    @(link_name="godot_string_insert")
    string_insert :: proc "c" (p_self : ^String, p_at_pos : _c.int, p_string : String) -> String ---;

    @(link_name="godot_string_is_numeric")
    string_is_numeric :: proc "c" (p_self : ^String) -> Bool ---;

    @(link_name="godot_string_is_subsequence_of")
    string_is_subsequence_of :: proc "c" (p_self : ^String, p_string : ^String) -> Bool ---;

    @(link_name="godot_string_is_subsequence_ofi")
    string_is_subsequence_ofi :: proc "c" (p_self : ^String, p_string : ^String) -> Bool ---;

    @(link_name="godot_string_lpad")
    string_lpad :: proc "c" (p_self : ^String, p_min_length : _c.int) -> String ---;

    @(link_name="godot_string_lpad_with_custom_character")
    string_lpad_with_custom_character :: proc "c" (p_self : ^String, p_min_length : _c.int, p_character : ^String) -> String ---;

    @(link_name="godot_string_match")
    string_match :: proc "c" (p_self : ^String, p_wildcard : ^String) -> Bool ---;

    @(link_name="godot_string_matchn")
    string_matchn :: proc "c" (p_self : ^String, p_wildcard : ^String) -> Bool ---;

    @(link_name="godot_string_md5")
    string_md5 :: proc "c" (p_md5 : ^u8) -> String ---;

    @(link_name="godot_string_num")
    string_num :: proc "c" (p_num : _c.double) -> String ---;

    @(link_name="godot_string_num_int64")
    string_num_int64 :: proc "c" (p_num : i64, p_base : _c.int) -> String ---;

    @(link_name="godot_string_num_int64_capitalized")
    string_num_int64_capitalized :: proc "c" (p_num : i64, p_base : _c.int, p_capitalize_hex : Bool) -> String ---;

    @(link_name="godot_string_num_real")
    string_num_real :: proc "c" (p_num : _c.double) -> String ---;

    @(link_name="godot_string_num_scientific")
    string_num_scientific :: proc "c" (p_num : _c.double) -> String ---;

    @(link_name="godot_string_num_with_decimals")
    string_num_with_decimals :: proc "c" (p_num : _c.double, p_decimals : _c.int) -> String ---;

    @(link_name="godot_string_pad_decimals")
    string_pad_decimals :: proc "c" (p_self : ^String, p_digits : _c.int) -> String ---;

    @(link_name="godot_string_pad_zeros")
    string_pad_zeros :: proc "c" (p_self : ^String, p_digits : _c.int) -> String ---;

    @(link_name="godot_string_replace_first")
    string_replace_first :: proc "c" (p_self : ^String, p_key : String, p_with : String) -> String ---;

    @(link_name="godot_string_replace")
    string_replace :: proc "c" (p_self : ^String, p_key : String, p_with : String) -> String ---;

    @(link_name="godot_string_replacen")
    string_replacen :: proc "c" (p_self : ^String, p_key : String, p_with : String) -> String ---;

    @(link_name="godot_string_rfind")
    string_rfind :: proc "c" (p_self : ^String, p_what : String) -> _c.int ---;

    @(link_name="godot_string_rfindn")
    string_rfindn :: proc "c" (p_self : ^String, p_what : String) -> _c.int ---;

    @(link_name="godot_string_rfind_from")
    string_rfind_from :: proc "c" (p_self : ^String, p_what : String, p_from : _c.int) -> _c.int ---;

    @(link_name="godot_string_rfindn_from")
    string_rfindn_from :: proc "c" (p_self : ^String, p_what : String, p_from : _c.int) -> _c.int ---;

    @(link_name="godot_string_rpad")
    string_rpad :: proc "c" (p_self : ^String, p_min_length : _c.int) -> String ---;

    @(link_name="godot_string_rpad_with_custom_character")
    string_rpad_with_custom_character :: proc "c" (p_self : ^String, p_min_length : _c.int, p_character : ^String) -> String ---;

    @(link_name="godot_string_similarity")
    string_similarity :: proc "c" (p_self : ^String, p_string : ^String) -> _c.float ---;

    @(link_name="godot_string_sprintf")
    string_sprintf :: proc "c" (p_self : ^String, p_values : ^Array, p_error : ^Bool) -> String ---;

    @(link_name="godot_string_substr")
    string_substr :: proc "c" (p_self : ^String, p_from : _c.int, p_chars : _c.int) -> String ---;

    @(link_name="godot_string_to_double")
    string_to_double :: proc "c" (p_self : ^String) -> _c.double ---;

    @(link_name="godot_string_to_float")
    string_to_float :: proc "c" (p_self : ^String) -> _c.float ---;

    @(link_name="godot_string_to_int")
    string_to_int :: proc "c" (p_self : ^String) -> _c.int ---;

    @(link_name="godot_string_camelcase_to_underscore")
    string_camelcase_to_underscore :: proc "c" (p_self : ^String) -> String ---;

    @(link_name="godot_string_camelcase_to_underscore_lowercased")
    string_camelcase_to_underscore_lowercased :: proc "c" (p_self : ^String) -> String ---;

    @(link_name="godot_string_capitalize")
    string_capitalize :: proc "c" (p_self : ^String) -> String ---;

    @(link_name="godot_string_char_to_double")
    string_char_to_double :: proc "c" (p_what : cstring) -> _c.double ---;

    @(link_name="godot_string_char_to_int")
    string_char_to_int :: proc "c" (p_what : cstring) -> _c.int ---;

    @(link_name="godot_string_wchar_to_int")
    string_wchar_to_int :: proc "c" (p_str : ^_c.wchar_t) -> i64 ---;

    @(link_name="godot_string_char_to_int_with_len")
    string_char_to_int_with_len :: proc "c" (p_what : cstring, p_len : _c.int) -> _c.int ---;

    @(link_name="godot_string_char_to_int64_with_len")
    string_char_to_int64_with_len :: proc "c" (p_str : ^_c.wchar_t, p_len : _c.int) -> i64 ---;

    @(link_name="godot_string_hex_to_int64")
    string_hex_to_int64 :: proc "c" (p_self : ^String) -> i64 ---;

    @(link_name="godot_string_hex_to_int64_with_prefix")
    string_hex_to_int64_with_prefix :: proc "c" (p_self : ^String) -> i64 ---;

    @(link_name="godot_string_to_int64")
    string_to_int64 :: proc "c" (p_self : ^String) -> i64 ---;

    @(link_name="godot_string_unicode_char_to_double")
    string_unicode_char_to_double :: proc "c" (p_str : ^_c.wchar_t, r_end : ^^_c.wchar_t) -> _c.double ---;

    @(link_name="godot_string_get_slice_count")
    string_get_slice_count :: proc "c" (p_self : ^String, p_splitter : String) -> _c.int ---;

    @(link_name="godot_string_get_slice")
    string_get_slice :: proc "c" (p_self : ^String, p_splitter : String, p_slice : _c.int) -> String ---;

    @(link_name="godot_string_get_slicec")
    string_get_slicec :: proc "c" (p_self : ^String, p_splitter : _c.wchar_t, p_slice : _c.int) -> String ---;

    @(link_name="godot_string_split")
    string_split :: proc "c" (p_self : ^String, p_splitter : ^String) -> Array ---;

    @(link_name="godot_string_split_allow_empty")
    string_split_allow_empty :: proc "c" (p_self : ^String, p_splitter : ^String) -> Array ---;

    @(link_name="godot_string_split_floats")
    string_split_floats :: proc "c" (p_self : ^String, p_splitter : ^String) -> Array ---;

    @(link_name="godot_string_split_floats_allows_empty")
    string_split_floats_allows_empty :: proc "c" (p_self : ^String, p_splitter : ^String) -> Array ---;

    @(link_name="godot_string_split_floats_mk")
    string_split_floats_mk :: proc "c" (p_self : ^String, p_splitters : ^Array) -> Array ---;

    @(link_name="godot_string_split_floats_mk_allows_empty")
    string_split_floats_mk_allows_empty :: proc "c" (p_self : ^String, p_splitters : ^Array) -> Array ---;

    @(link_name="godot_string_split_ints")
    string_split_ints :: proc "c" (p_self : ^String, p_splitter : ^String) -> Array ---;

    @(link_name="godot_string_split_ints_allows_empty")
    string_split_ints_allows_empty :: proc "c" (p_self : ^String, p_splitter : ^String) -> Array ---;

    @(link_name="godot_string_split_ints_mk")
    string_split_ints_mk :: proc "c" (p_self : ^String, p_splitters : ^Array) -> Array ---;

    @(link_name="godot_string_split_ints_mk_allows_empty")
    string_split_ints_mk_allows_empty :: proc "c" (p_self : ^String, p_splitters : ^Array) -> Array ---;

    @(link_name="godot_string_split_spaces")
    string_split_spaces :: proc "c" (p_self : ^String) -> Array ---;

    @(link_name="godot_string_char_lowercase")
    string_char_lowercase :: proc "c" (p_char : _c.wchar_t) -> _c.wchar_t ---;

    @(link_name="godot_string_char_uppercase")
    string_char_uppercase :: proc "c" (p_char : _c.wchar_t) -> _c.wchar_t ---;

    @(link_name="godot_string_to_lower")
    string_to_lower :: proc "c" (p_self : ^String) -> String ---;

    @(link_name="godot_string_to_upper")
    string_to_upper :: proc "c" (p_self : ^String) -> String ---;

    @(link_name="godot_string_get_basename")
    string_get_basename :: proc "c" (p_self : ^String) -> String ---;

    @(link_name="godot_string_get_extension")
    string_get_extension :: proc "c" (p_self : ^String) -> String ---;

    @(link_name="godot_string_left")
    string_left :: proc "c" (p_self : ^String, p_pos : _c.int) -> String ---;

    @(link_name="godot_string_ord_at")
    string_ord_at :: proc "c" (p_self : ^String, p_idx : _c.int) -> _c.wchar_t ---;

    @(link_name="godot_string_plus_file")
    string_plus_file :: proc "c" (p_self : ^String, p_file : ^String) -> String ---;

    @(link_name="godot_string_right")
    string_right :: proc "c" (p_self : ^String, p_pos : _c.int) -> String ---;

    @(link_name="godot_string_strip_edges")
    string_strip_edges :: proc "c" (p_self : ^String, p_left : Bool, p_right : Bool) -> String ---;

    @(link_name="godot_string_strip_escapes")
    string_strip_escapes :: proc "c" (p_self : ^String) -> String ---;

    @(link_name="godot_string_erase")
    string_erase :: proc "c" (p_self : ^String, p_pos : _c.int, p_chars : _c.int) ---;

    @(link_name="godot_string_ascii")
    string_ascii :: proc "c" (p_self : ^String) -> CharString ---;

    @(link_name="godot_string_ascii_extended")
    string_ascii_extended :: proc "c" (p_self : ^String) -> CharString ---;

    @(link_name="godot_string_utf8")
    string_utf8 :: proc "c" (p_self : ^String) -> CharString ---;

    @(link_name="godot_string_parse_utf8")
    string_parse_utf8 :: proc "c" (p_self : ^String, p_utf8 : cstring) -> Bool ---;

    @(link_name="godot_string_parse_utf8_with_len")
    string_parse_utf8_with_len :: proc "c" (p_self : ^String, p_utf8 : cstring, p_len : _c.int) -> Bool ---;

    @(link_name="godot_string_chars_to_utf8")
    string_chars_to_utf8 :: proc "c" (p_utf8 : cstring) -> String ---;

    @(link_name="godot_string_chars_to_utf8_with_len")
    string_chars_to_utf8_with_len :: proc "c" (p_utf8 : cstring, p_len : _c.int) -> String ---;

    @(link_name="godot_string_hash")
    string_hash :: proc "c" (p_self : ^String) -> u32 ---;

    @(link_name="godot_string_hash64")
    string_hash64 :: proc "c" (p_self : ^String) -> u64 ---;

    @(link_name="godot_string_hash_chars")
    string_hash_chars :: proc "c" (p_cstr : cstring) -> u32 ---;

    @(link_name="godot_string_hash_chars_with_len")
    string_hash_chars_with_len :: proc "c" (p_cstr : cstring, p_len : _c.int) -> u32 ---;

    @(link_name="godot_string_hash_utf8_chars")
    string_hash_utf8_chars :: proc "c" (p_str : ^_c.wchar_t) -> u32 ---;

    @(link_name="godot_string_hash_utf8_chars_with_len")
    string_hash_utf8_chars_with_len :: proc "c" (p_str : ^_c.wchar_t, p_len : _c.int) -> u32 ---;

    @(link_name="godot_string_md5_buffer")
    string_md5_buffer :: proc "c" (p_self : ^String) -> PoolByteArray ---;

    @(link_name="godot_string_md5_text")
    string_md5_text :: proc "c" (p_self : ^String) -> String ---;

    @(link_name="godot_string_sha256_buffer")
    string_sha256_buffer :: proc "c" (p_self : ^String) -> PoolByteArray ---;

    @(link_name="godot_string_sha256_text")
    string_sha256_text :: proc "c" (p_self : ^String) -> String ---;

    @(link_name="godot_string_empty")
    string_empty :: proc "c" (p_self : ^String) -> Bool ---;

    @(link_name="godot_string_get_base_dir")
    string_get_base_dir :: proc "c" (p_self : ^String) -> String ---;

    @(link_name="godot_string_get_file")
    string_get_file :: proc "c" (p_self : ^String) -> String ---;

    @(link_name="godot_string_humanize_size")
    string_humanize_size :: proc "c" (p_size : u64) -> String ---;

    @(link_name="godot_string_is_abs_path")
    string_is_abs_path :: proc "c" (p_self : ^String) -> Bool ---;

    @(link_name="godot_string_is_rel_path")
    string_is_rel_path :: proc "c" (p_self : ^String) -> Bool ---;

    @(link_name="godot_string_is_resource_file")
    string_is_resource_file :: proc "c" (p_self : ^String) -> Bool ---;

    @(link_name="godot_string_path_to")
    string_path_to :: proc "c" (p_self : ^String, p_path : ^String) -> String ---;

    @(link_name="godot_string_path_to_file")
    string_path_to_file :: proc "c" (p_self : ^String, p_path : ^String) -> String ---;

    @(link_name="godot_string_simplify_path")
    string_simplify_path :: proc "c" (p_self : ^String) -> String ---;

    @(link_name="godot_string_c_escape")
    string_c_escape :: proc "c" (p_self : ^String) -> String ---;

    @(link_name="godot_string_c_escape_multiline")
    string_c_escape_multiline :: proc "c" (p_self : ^String) -> String ---;

    @(link_name="godot_string_c_unescape")
    string_c_unescape :: proc "c" (p_self : ^String) -> String ---;

    @(link_name="godot_string_http_escape")
    string_http_escape :: proc "c" (p_self : ^String) -> String ---;

    @(link_name="godot_string_http_unescape")
    string_http_unescape :: proc "c" (p_self : ^String) -> String ---;

    @(link_name="godot_string_json_escape")
    string_json_escape :: proc "c" (p_self : ^String) -> String ---;

    @(link_name="godot_string_word_wrap")
    string_word_wrap :: proc "c" (p_self : ^String, p_chars_per_line : _c.int) -> String ---;

    @(link_name="godot_string_xml_escape")
    string_xml_escape :: proc "c" (p_self : ^String) -> String ---;

    @(link_name="godot_string_xml_escape_with_quotes")
    string_xml_escape_with_quotes :: proc "c" (p_self : ^String) -> String ---;

    @(link_name="godot_string_xml_unescape")
    string_xml_unescape :: proc "c" (p_self : ^String) -> String ---;

    @(link_name="godot_string_percent_decode")
    string_percent_decode :: proc "c" (p_self : ^String) -> String ---;

    @(link_name="godot_string_percent_encode")
    string_percent_encode :: proc "c" (p_self : ^String) -> String ---;

    @(link_name="godot_string_is_valid_float")
    string_is_valid_float :: proc "c" (p_self : ^String) -> Bool ---;

    @(link_name="godot_string_is_valid_hex_number")
    string_is_valid_hex_number :: proc "c" (p_self : ^String, p_with_prefix : Bool) -> Bool ---;

    @(link_name="godot_string_is_valid_html_color")
    string_is_valid_html_color :: proc "c" (p_self : ^String) -> Bool ---;

    @(link_name="godot_string_is_valid_identifier")
    string_is_valid_identifier :: proc "c" (p_self : ^String) -> Bool ---;

    @(link_name="godot_string_is_valid_integer")
    string_is_valid_integer :: proc "c" (p_self : ^String) -> Bool ---;

    @(link_name="godot_string_is_valid_ip_address")
    string_is_valid_ip_address :: proc "c" (p_self : ^String) -> Bool ---;

    @(link_name="godot_string_dedent")
    string_dedent :: proc "c" (p_self : ^String) -> String ---;

    @(link_name="godot_string_trim_prefix")
    string_trim_prefix :: proc "c" (p_self : ^String, p_prefix : ^String) -> String ---;

    @(link_name="godot_string_trim_suffix")
    string_trim_suffix :: proc "c" (p_self : ^String, p_suffix : ^String) -> String ---;

    @(link_name="godot_string_rstrip")
    string_rstrip :: proc "c" (p_self : ^String, p_chars : ^String) -> String ---;

    @(link_name="godot_string_rsplit")
    string_rsplit :: proc "c" (p_self : ^String, p_divisor : ^String, p_allow_empty : Bool, p_maxsplit : _c.int) -> PoolStringArray ---;

    @(link_name="godot_string_destroy")
    string_destroy :: proc "c" (p_self : ^String) ---;

    @(link_name="godot_transform2d_new")
    transform2d_new :: proc "c" (r_dest : ^Transform2D, p_rot : _c.float, p_pos : ^Vector2) ---;

    @(link_name="godot_transform2d_new_axis_origin")
    transform2d_new_axis_origin :: proc "c" (r_dest : ^Transform2D, p_x_axis : ^Vector2, p_y_axis : ^Vector2, p_origin : ^Vector2) ---;

    @(link_name="godot_transform2d_as_string")
    transform2d_as_string :: proc "c" (p_self : ^Transform2D) -> String ---;

    @(link_name="godot_transform2d_inverse")
    transform2d_inverse :: proc "c" (p_self : ^Transform2D) -> Transform2D ---;

    @(link_name="godot_transform2d_affine_inverse")
    transform2d_affine_inverse :: proc "c" (p_self : ^Transform2D) -> Transform2D ---;

    @(link_name="godot_transform2d_get_rotation")
    transform2d_get_rotation :: proc "c" (p_self : ^Transform2D) -> _c.float ---;

    @(link_name="godot_transform2d_get_origin")
    transform2d_get_origin :: proc "c" (p_self : ^Transform2D) -> Vector2 ---;

    @(link_name="godot_transform2d_get_scale")
    transform2d_get_scale :: proc "c" (p_self : ^Transform2D) -> Vector2 ---;

    @(link_name="godot_transform2d_orthonormalized")
    transform2d_orthonormalized :: proc "c" (p_self : ^Transform2D) -> Transform2D ---;

    @(link_name="godot_transform2d_rotated")
    transform2d_rotated :: proc "c" (p_self : ^Transform2D, p_phi : _c.float) -> Transform2D ---;

    @(link_name="godot_transform2d_scaled")
    transform2d_scaled :: proc "c" (p_self : ^Transform2D, p_scale : ^Vector2) -> Transform2D ---;

    @(link_name="godot_transform2d_translated")
    transform2d_translated :: proc "c" (p_self : ^Transform2D, p_offset : ^Vector2) -> Transform2D ---;

    @(link_name="godot_transform2d_xform_vector2")
    transform2d_xform_vector2 :: proc "c" (p_self : ^Transform2D, p_v : ^Vector2) -> Vector2 ---;

    @(link_name="godot_transform2d_xform_inv_vector2")
    transform2d_xform_inv_vector2 :: proc "c" (p_self : ^Transform2D, p_v : ^Vector2) -> Vector2 ---;

    @(link_name="godot_transform2d_basis_xform_vector2")
    transform2d_basis_xform_vector2 :: proc "c" (p_self : ^Transform2D, p_v : ^Vector2) -> Vector2 ---;

    @(link_name="godot_transform2d_basis_xform_inv_vector2")
    transform2d_basis_xform_inv_vector2 :: proc "c" (p_self : ^Transform2D, p_v : ^Vector2) -> Vector2 ---;

    @(link_name="godot_transform2d_interpolate_with")
    transform2d_interpolate_with :: proc "c" (p_self : ^Transform2D, p_m : ^Transform2D, p_c : _c.float) -> Transform2D ---;

    @(link_name="godot_transform2d_operator_equal")
    transform2d_operator_equal :: proc "c" (p_self : ^Transform2D, p_b : ^Transform2D) -> Bool ---;

    @(link_name="godot_transform2d_operator_multiply")
    transform2d_operator_multiply :: proc "c" (p_self : ^Transform2D, p_b : ^Transform2D) -> Transform2D ---;

    @(link_name="godot_transform2d_new_identity")
    transform2d_new_identity :: proc "c" (r_dest : ^Transform2D) ---;

    @(link_name="godot_transform2d_xform_rect2")
    transform2d_xform_rect2 :: proc "c" (p_self : ^Transform2D, p_v : ^Rect2) -> Rect2 ---;

    @(link_name="godot_transform2d_xform_inv_rect2")
    transform2d_xform_inv_rect2 :: proc "c" (p_self : ^Transform2D, p_v : ^Rect2) -> Rect2 ---;

    @(link_name="godot_transform_new_with_axis_origin")
    transform_new_with_axis_origin :: proc "c" (r_dest : ^Transform, p_x_axis : ^Vector3, p_y_axis : ^Vector3, p_z_axis : ^Vector3, p_origin : ^Vector3) ---;

    @(link_name="godot_transform_new")
    transform_new :: proc "c" (r_dest : ^Transform, p_basis : ^Basis, p_origin : ^Vector3) ---;

    @(link_name="godot_transform_new_with_quat")
    transform_new_with_quat :: proc "c" (r_dest : ^Transform, p_quat : ^Quat) ---;

    @(link_name="godot_transform_get_basis")
    transform_get_basis :: proc "c" (p_self : ^Transform) -> Basis ---;

    @(link_name="godot_transform_set_basis")
    transform_set_basis :: proc "c" (p_self : ^Transform, p_v : ^Basis) ---;

    @(link_name="godot_transform_get_origin")
    transform_get_origin :: proc "c" (p_self : ^Transform) -> Vector3 ---;

    @(link_name="godot_transform_set_origin")
    transform_set_origin :: proc "c" (p_self : ^Transform, p_v : ^Vector3) ---;

    @(link_name="godot_transform_as_string")
    transform_as_string :: proc "c" (p_self : ^Transform) -> String ---;

    @(link_name="godot_transform_inverse")
    transform_inverse :: proc "c" (p_self : ^Transform) -> Transform ---;

    @(link_name="godot_transform_affine_inverse")
    transform_affine_inverse :: proc "c" (p_self : ^Transform) -> Transform ---;

    @(link_name="godot_transform_orthonormalized")
    transform_orthonormalized :: proc "c" (p_self : ^Transform) -> Transform ---;

    @(link_name="godot_transform_rotated")
    transform_rotated :: proc "c" (p_self : ^Transform, p_axis : ^Vector3, p_phi : _c.float) -> Transform ---;

    @(link_name="godot_transform_scaled")
    transform_scaled :: proc "c" (p_self : ^Transform, p_scale : ^Vector3) -> Transform ---;

    @(link_name="godot_transform_translated")
    transform_translated :: proc "c" (p_self : ^Transform, p_ofs : ^Vector3) -> Transform ---;

    @(link_name="godot_transform_looking_at")
    transform_looking_at :: proc "c" (p_self : ^Transform, p_target : ^Vector3, p_up : ^Vector3) -> Transform ---;

    @(link_name="godot_transform_xform_plane")
    transform_xform_plane :: proc "c" (p_self : ^Transform, p_v : ^Plane) -> Plane ---;

    @(link_name="godot_transform_xform_inv_plane")
    transform_xform_inv_plane :: proc "c" (p_self : ^Transform, p_v : ^Plane) -> Plane ---;

    @(link_name="godot_transform_new_identity")
    transform_new_identity :: proc "c" (r_dest : ^Transform) ---;

    @(link_name="godot_transform_operator_equal")
    transform_operator_equal :: proc "c" (p_self : ^Transform, p_b : ^Transform) -> Bool ---;

    @(link_name="godot_transform_operator_multiply")
    transform_operator_multiply :: proc "c" (p_self : ^Transform, p_b : ^Transform) -> Transform ---;

    @(link_name="godot_transform_xform_vector3")
    transform_xform_vector3 :: proc "c" (p_self : ^Transform, p_v : ^Vector3) -> Vector3 ---;

    @(link_name="godot_transform_xform_inv_vector3")
    transform_xform_inv_vector3 :: proc "c" (p_self : ^Transform, p_v : ^Vector3) -> Vector3 ---;

    @(link_name="godot_transform_xform_aabb")
    transform_xform_aabb :: proc "c" (p_self : ^Transform, p_v : ^Aabb) -> Aabb ---;

    @(link_name="godot_transform_xform_inv_aabb")
    transform_xform_inv_aabb :: proc "c" (p_self : ^Transform, p_v : ^Aabb) -> Aabb ---;

    @(link_name="godot_variant_get_type")
    variant_get_type :: proc "c" (p_v : ^Variant) -> VariantType ---;

    @(link_name="godot_variant_new_copy")
    variant_new_copy :: proc "c" (r_dest : ^Variant, p_src : ^Variant) ---;

    @(link_name="godot_variant_new_nil")
    variant_new_nil :: proc "c" (r_dest : ^Variant) ---;

    @(link_name="godot_variant_new_bool")
    variant_new_bool :: proc "c" (r_dest : ^Variant, p_b : Bool) ---;

    @(link_name="godot_variant_new_uint")
    variant_new_uint :: proc "c" (r_dest : ^Variant, p_i : u64) ---;

    @(link_name="godot_variant_new_int")
    variant_new_int :: proc "c" (r_dest : ^Variant, p_i : i64) ---;

    @(link_name="godot_variant_new_real")
    variant_new_real :: proc "c" (r_dest : ^Variant, p_r : _c.double) ---;

    @(link_name="godot_variant_new_string")
    variant_new_string :: proc "c" (r_dest : ^Variant, p_s : ^String) ---;

    @(link_name="godot_variant_new_vector2")
    variant_new_vector2 :: proc "c" (r_dest : ^Variant, p_v2 : ^Vector2) ---;

    @(link_name="godot_variant_new_rect2")
    variant_new_rect2 :: proc "c" (r_dest : ^Variant, p_rect2 : ^Rect2) ---;

    @(link_name="godot_variant_new_vector3")
    variant_new_vector3 :: proc "c" (r_dest : ^Variant, p_v3 : ^Vector3) ---;

    @(link_name="godot_variant_new_transform2d")
    variant_new_transform2d :: proc "c" (r_dest : ^Variant, p_t2d : ^Transform2D) ---;

    @(link_name="godot_variant_new_plane")
    variant_new_plane :: proc "c" (r_dest : ^Variant, p_plane : ^Plane) ---;

    @(link_name="godot_variant_new_quat")
    variant_new_quat :: proc "c" (r_dest : ^Variant, p_quat : ^Quat) ---;

    @(link_name="godot_variant_new_aabb")
    variant_new_aabb :: proc "c" (r_dest : ^Variant, p_aabb : ^Aabb) ---;

    @(link_name="godot_variant_new_basis")
    variant_new_basis :: proc "c" (r_dest : ^Variant, p_basis : ^Basis) ---;

    @(link_name="godot_variant_new_transform")
    variant_new_transform :: proc "c" (r_dest : ^Variant, p_trans : ^Transform) ---;

    @(link_name="godot_variant_new_color")
    variant_new_color :: proc "c" (r_dest : ^Variant, p_color : ^Color) ---;

    @(link_name="godot_variant_new_node_path")
    variant_new_node_path :: proc "c" (r_dest : ^Variant, p_np : ^NodePath) ---;

    @(link_name="godot_variant_new_rid")
    variant_new_rid :: proc "c" (r_dest : ^Variant, p_rid : ^Rid) ---;

    @(link_name="godot_variant_new_object")
    variant_new_object :: proc "c" (r_dest : ^Variant, p_obj : rawptr) ---;

    @(link_name="godot_variant_new_dictionary")
    variant_new_dictionary :: proc "c" (r_dest : ^Variant, p_dict : ^Dictionary) ---;

    @(link_name="godot_variant_new_array")
    variant_new_array :: proc "c" (r_dest : ^Variant, p_arr : ^Array) ---;

    @(link_name="godot_variant_new_pool_byte_array")
    variant_new_pool_byte_array :: proc "c" (r_dest : ^Variant, p_pba : ^PoolByteArray) ---;

    @(link_name="godot_variant_new_pool_int_array")
    variant_new_pool_int_array :: proc "c" (r_dest : ^Variant, p_pia : ^PoolIntArray) ---;

    @(link_name="godot_variant_new_pool_real_array")
    variant_new_pool_real_array :: proc "c" (r_dest : ^Variant, p_pra : ^PoolRealArray) ---;

    @(link_name="godot_variant_new_pool_string_array")
    variant_new_pool_string_array :: proc "c" (r_dest : ^Variant, p_psa : ^PoolStringArray) ---;

    @(link_name="godot_variant_new_pool_vector2_array")
    variant_new_pool_vector2_array :: proc "c" (r_dest : ^Variant, p_pv2a : ^PoolVector2Array) ---;

    @(link_name="godot_variant_new_pool_vector3_array")
    variant_new_pool_vector3_array :: proc "c" (r_dest : ^Variant, p_pv3a : ^PoolVector3Array) ---;

    @(link_name="godot_variant_new_pool_color_array")
    variant_new_pool_color_array :: proc "c" (r_dest : ^Variant, p_pca : ^PoolColorArray) ---;

    @(link_name="godot_variant_as_bool")
    variant_as_bool :: proc "c" (p_self : ^Variant) -> Bool ---;

    @(link_name="godot_variant_as_uint")
    variant_as_uint :: proc "c" (p_self : ^Variant) -> u64 ---;

    @(link_name="godot_variant_as_int")
    variant_as_int :: proc "c" (p_self : ^Variant) -> i64 ---;

    @(link_name="godot_variant_as_real")
    variant_as_real :: proc "c" (p_self : ^Variant) -> _c.double ---;

    @(link_name="godot_variant_as_string")
    variant_as_string :: proc "c" (p_self : ^Variant) -> String ---;

    @(link_name="godot_variant_as_vector2")
    variant_as_vector2 :: proc "c" (p_self : ^Variant) -> Vector2 ---;

    @(link_name="godot_variant_as_rect2")
    variant_as_rect2 :: proc "c" (p_self : ^Variant) -> Rect2 ---;

    @(link_name="godot_variant_as_vector3")
    variant_as_vector3 :: proc "c" (p_self : ^Variant) -> Vector3 ---;

    @(link_name="godot_variant_as_transform2d")
    variant_as_transform2d :: proc "c" (p_self : ^Variant) -> Transform2D ---;

    @(link_name="godot_variant_as_plane")
    variant_as_plane :: proc "c" (p_self : ^Variant) -> Plane ---;

    @(link_name="godot_variant_as_quat")
    variant_as_quat :: proc "c" (p_self : ^Variant) -> Quat ---;

    @(link_name="godot_variant_as_aabb")
    variant_as_aabb :: proc "c" (p_self : ^Variant) -> Aabb ---;

    @(link_name="godot_variant_as_basis")
    variant_as_basis :: proc "c" (p_self : ^Variant) -> Basis ---;

    @(link_name="godot_variant_as_transform")
    variant_as_transform :: proc "c" (p_self : ^Variant) -> Transform ---;

    @(link_name="godot_variant_as_color")
    variant_as_color :: proc "c" (p_self : ^Variant) -> Color ---;

    @(link_name="godot_variant_as_node_path")
    variant_as_node_path :: proc "c" (p_self : ^Variant) -> NodePath ---;

    @(link_name="godot_variant_as_rid")
    variant_as_rid :: proc "c" (p_self : ^Variant) -> Rid ---;

    @(link_name="godot_variant_as_object")
    variant_as_object :: proc "c" (p_self : ^Variant) -> rawptr ---;

    @(link_name="godot_variant_as_dictionary")
    variant_as_dictionary :: proc "c" (p_self : ^Variant) -> Dictionary ---;

    @(link_name="godot_variant_as_array")
    variant_as_array :: proc "c" (p_self : ^Variant) -> Array ---;

    @(link_name="godot_variant_as_pool_byte_array")
    variant_as_pool_byte_array :: proc "c" (p_self : ^Variant) -> PoolByteArray ---;

    @(link_name="godot_variant_as_pool_int_array")
    variant_as_pool_int_array :: proc "c" (p_self : ^Variant) -> PoolIntArray ---;

    @(link_name="godot_variant_as_pool_real_array")
    variant_as_pool_real_array :: proc "c" (p_self : ^Variant) -> PoolRealArray ---;

    @(link_name="godot_variant_as_pool_string_array")
    variant_as_pool_string_array :: proc "c" (p_self : ^Variant) -> PoolStringArray ---;

    @(link_name="godot_variant_as_pool_vector2_array")
    variant_as_pool_vector2_array :: proc "c" (p_self : ^Variant) -> PoolVector2Array ---;

    @(link_name="godot_variant_as_pool_vector3_array")
    variant_as_pool_vector3_array :: proc "c" (p_self : ^Variant) -> PoolVector3Array ---;

    @(link_name="godot_variant_as_pool_color_array")
    variant_as_pool_color_array :: proc "c" (p_self : ^Variant) -> PoolColorArray ---;

    @(link_name="godot_variant_call")
    variant_call :: proc "c" (p_self : ^Variant, p_method : ^String, p_args : ^^Variant, p_argcount : _c.int, r_error : ^VariantCallError) -> Variant ---;

    @(link_name="godot_variant_has_method")
    variant_has_method :: proc "c" (p_self : ^Variant, p_method : ^String) -> Bool ---;

    @(link_name="godot_variant_operator_equal")
    variant_operator_equal :: proc "c" (p_self : ^Variant, p_other : ^Variant) -> Bool ---;

    @(link_name="godot_variant_operator_less")
    variant_operator_less :: proc "c" (p_self : ^Variant, p_other : ^Variant) -> Bool ---;

    @(link_name="godot_variant_hash_compare")
    variant_hash_compare :: proc "c" (p_self : ^Variant, p_other : ^Variant) -> Bool ---;

    @(link_name="godot_variant_booleanize")
    variant_booleanize :: proc "c" (p_self : ^Variant) -> Bool ---;

    @(link_name="godot_variant_destroy")
    variant_destroy :: proc "c" (p_self : ^Variant) ---;

    @(link_name="godot_variant_get_operator_name")
    variant_get_operator_name :: proc "c" (p_op : VariantOperator) -> String ---;

    @(link_name="godot_variant_evaluate")
    variant_evaluate :: proc "c" (p_op : VariantOperator, p_a : ^Variant, p_b : ^Variant, r_ret : ^Variant, r_valid : ^Bool) ---;

    @(link_name="godot_vector2_new")
    vector2_new :: proc "c" (r_dest : ^Vector2, p_x : _c.float, p_y : _c.float) ---;

    @(link_name="godot_vector2_as_string")
    vector2_as_string :: proc "c" (p_self : ^Vector2) -> String ---;

    @(link_name="godot_vector2_normalized")
    vector2_normalized :: proc "c" (p_self : ^Vector2) -> Vector2 ---;

    @(link_name="godot_vector2_length")
    vector2_length :: proc "c" (p_self : ^Vector2) -> _c.float ---;

    @(link_name="godot_vector2_angle")
    vector2_angle :: proc "c" (p_self : ^Vector2) -> _c.float ---;

    @(link_name="godot_vector2_length_squared")
    vector2_length_squared :: proc "c" (p_self : ^Vector2) -> _c.float ---;

    @(link_name="godot_vector2_is_normalized")
    vector2_is_normalized :: proc "c" (p_self : ^Vector2) -> Bool ---;

    @(link_name="godot_vector2_direction_to")
    vector2_direction_to :: proc "c" (p_self : ^Vector2, p_b : ^Vector2) -> Vector2 ---;

    @(link_name="godot_vector2_distance_to")
    vector2_distance_to :: proc "c" (p_self : ^Vector2, p_to : ^Vector2) -> _c.float ---;

    @(link_name="godot_vector2_distance_squared_to")
    vector2_distance_squared_to :: proc "c" (p_self : ^Vector2, p_to : ^Vector2) -> _c.float ---;

    @(link_name="godot_vector2_angle_to")
    vector2_angle_to :: proc "c" (p_self : ^Vector2, p_to : ^Vector2) -> _c.float ---;

    @(link_name="godot_vector2_angle_to_point")
    vector2_angle_to_point :: proc "c" (p_self : ^Vector2, p_to : ^Vector2) -> _c.float ---;

    @(link_name="godot_vector2_linear_interpolate")
    vector2_linear_interpolate :: proc "c" (p_self : ^Vector2, p_b : ^Vector2, p_t : _c.float) -> Vector2 ---;

    @(link_name="godot_vector2_cubic_interpolate")
    vector2_cubic_interpolate :: proc "c" (p_self : ^Vector2, p_b : ^Vector2, p_pre_a : ^Vector2, p_post_b : ^Vector2, p_t : _c.float) -> Vector2 ---;

    @(link_name="godot_vector2_move_toward")
    vector2_move_toward :: proc "c" (p_self : ^Vector2, p_to : ^Vector2, p_delta : _c.float) -> Vector2 ---;

    @(link_name="godot_vector2_rotated")
    vector2_rotated :: proc "c" (p_self : ^Vector2, p_phi : _c.float) -> Vector2 ---;

    @(link_name="godot_vector2_tangent")
    vector2_tangent :: proc "c" (p_self : ^Vector2) -> Vector2 ---;

    @(link_name="godot_vector2_floor")
    vector2_floor :: proc "c" (p_self : ^Vector2) -> Vector2 ---;

    @(link_name="godot_vector2_snapped")
    vector2_snapped :: proc "c" (p_self : ^Vector2, p_by : ^Vector2) -> Vector2 ---;

    @(link_name="godot_vector2_aspect")
    vector2_aspect :: proc "c" (p_self : ^Vector2) -> _c.float ---;

    @(link_name="godot_vector2_dot")
    vector2_dot :: proc "c" (p_self : ^Vector2, p_with : ^Vector2) -> _c.float ---;

    @(link_name="godot_vector2_slide")
    vector2_slide :: proc "c" (p_self : ^Vector2, p_n : ^Vector2) -> Vector2 ---;

    @(link_name="godot_vector2_bounce")
    vector2_bounce :: proc "c" (p_self : ^Vector2, p_n : ^Vector2) -> Vector2 ---;

    @(link_name="godot_vector2_reflect")
    vector2_reflect :: proc "c" (p_self : ^Vector2, p_n : ^Vector2) -> Vector2 ---;

    @(link_name="godot_vector2_abs")
    vector2_abs :: proc "c" (p_self : ^Vector2) -> Vector2 ---;

    @(link_name="godot_vector2_clamped")
    vector2_clamped :: proc "c" (p_self : ^Vector2, p_length : _c.float) -> Vector2 ---;

    @(link_name="godot_vector2_operator_add")
    vector2_operator_add :: proc "c" (p_self : ^Vector2, p_b : ^Vector2) -> Vector2 ---;

    @(link_name="godot_vector2_operator_subtract")
    vector2_operator_subtract :: proc "c" (p_self : ^Vector2, p_b : ^Vector2) -> Vector2 ---;

    @(link_name="godot_vector2_operator_multiply_vector")
    vector2_operator_multiply_vector :: proc "c" (p_self : ^Vector2, p_b : ^Vector2) -> Vector2 ---;

    @(link_name="godot_vector2_operator_multiply_scalar")
    vector2_operator_multiply_scalar :: proc "c" (p_self : ^Vector2, p_b : _c.float) -> Vector2 ---;

    @(link_name="godot_vector2_operator_divide_vector")
    vector2_operator_divide_vector :: proc "c" (p_self : ^Vector2, p_b : ^Vector2) -> Vector2 ---;

    @(link_name="godot_vector2_operator_divide_scalar")
    vector2_operator_divide_scalar :: proc "c" (p_self : ^Vector2, p_b : _c.float) -> Vector2 ---;

    @(link_name="godot_vector2_operator_equal")
    vector2_operator_equal :: proc "c" (p_self : ^Vector2, p_b : ^Vector2) -> Bool ---;

    @(link_name="godot_vector2_operator_less")
    vector2_operator_less :: proc "c" (p_self : ^Vector2, p_b : ^Vector2) -> Bool ---;

    @(link_name="godot_vector2_operator_neg")
    vector2_operator_neg :: proc "c" (p_self : ^Vector2) -> Vector2 ---;

    @(link_name="godot_vector2_set_x")
    vector2_set_x :: proc "c" (p_self : ^Vector2, p_x : _c.float) ---;

    @(link_name="godot_vector2_set_y")
    vector2_set_y :: proc "c" (p_self : ^Vector2, p_y : _c.float) ---;

    @(link_name="godot_vector2_get_x")
    vector2_get_x :: proc "c" (p_self : ^Vector2) -> _c.float ---;

    @(link_name="godot_vector2_get_y")
    vector2_get_y :: proc "c" (p_self : ^Vector2) -> _c.float ---;

    @(link_name="godot_vector3_new")
    vector3_new :: proc "c" (r_dest : ^Vector3, p_x : _c.float, p_y : _c.float, p_z : _c.float) ---;

    @(link_name="godot_vector3_as_string")
    vector3_as_string :: proc "c" (p_self : ^Vector3) -> String ---;

    @(link_name="godot_vector3_min_axis")
    vector3_min_axis :: proc "c" (p_self : ^Vector3) -> _c.int ---;

    @(link_name="godot_vector3_max_axis")
    vector3_max_axis :: proc "c" (p_self : ^Vector3) -> _c.int ---;

    @(link_name="godot_vector3_length")
    vector3_length :: proc "c" (p_self : ^Vector3) -> _c.float ---;

    @(link_name="godot_vector3_length_squared")
    vector3_length_squared :: proc "c" (p_self : ^Vector3) -> _c.float ---;

    @(link_name="godot_vector3_is_normalized")
    vector3_is_normalized :: proc "c" (p_self : ^Vector3) -> Bool ---;

    @(link_name="godot_vector3_normalized")
    vector3_normalized :: proc "c" (p_self : ^Vector3) -> Vector3 ---;

    @(link_name="godot_vector3_inverse")
    vector3_inverse :: proc "c" (p_self : ^Vector3) -> Vector3 ---;

    @(link_name="godot_vector3_snapped")
    vector3_snapped :: proc "c" (p_self : ^Vector3, p_by : ^Vector3) -> Vector3 ---;

    @(link_name="godot_vector3_rotated")
    vector3_rotated :: proc "c" (p_self : ^Vector3, p_axis : ^Vector3, p_phi : _c.float) -> Vector3 ---;

    @(link_name="godot_vector3_linear_interpolate")
    vector3_linear_interpolate :: proc "c" (p_self : ^Vector3, p_b : ^Vector3, p_t : _c.float) -> Vector3 ---;

    @(link_name="godot_vector3_cubic_interpolate")
    vector3_cubic_interpolate :: proc "c" (p_self : ^Vector3, p_b : ^Vector3, p_pre_a : ^Vector3, p_post_b : ^Vector3, p_t : _c.float) -> Vector3 ---;

    @(link_name="godot_vector3_move_toward")
    vector3_move_toward :: proc "c" (p_self : ^Vector3, p_to : ^Vector3, p_delta : _c.float) -> Vector3 ---;

    @(link_name="godot_vector3_dot")
    vector3_dot :: proc "c" (p_self : ^Vector3, p_b : ^Vector3) -> _c.float ---;

    @(link_name="godot_vector3_cross")
    vector3_cross :: proc "c" (p_self : ^Vector3, p_b : ^Vector3) -> Vector3 ---;

    @(link_name="godot_vector3_outer")
    vector3_outer :: proc "c" (p_self : ^Vector3, p_b : ^Vector3) -> Basis ---;

    @(link_name="godot_vector3_to_diagonal_matrix")
    vector3_to_diagonal_matrix :: proc "c" (p_self : ^Vector3) -> Basis ---;

    @(link_name="godot_vector3_abs")
    vector3_abs :: proc "c" (p_self : ^Vector3) -> Vector3 ---;

    @(link_name="godot_vector3_floor")
    vector3_floor :: proc "c" (p_self : ^Vector3) -> Vector3 ---;

    @(link_name="godot_vector3_ceil")
    vector3_ceil :: proc "c" (p_self : ^Vector3) -> Vector3 ---;

    @(link_name="godot_vector3_direction_to")
    vector3_direction_to :: proc "c" (p_self : ^Vector3, p_b : ^Vector3) -> Vector3 ---;

    @(link_name="godot_vector3_distance_to")
    vector3_distance_to :: proc "c" (p_self : ^Vector3, p_b : ^Vector3) -> _c.float ---;

    @(link_name="godot_vector3_distance_squared_to")
    vector3_distance_squared_to :: proc "c" (p_self : ^Vector3, p_b : ^Vector3) -> _c.float ---;

    @(link_name="godot_vector3_angle_to")
    vector3_angle_to :: proc "c" (p_self : ^Vector3, p_to : ^Vector3) -> _c.float ---;

    @(link_name="godot_vector3_slide")
    vector3_slide :: proc "c" (p_self : ^Vector3, p_n : ^Vector3) -> Vector3 ---;

    @(link_name="godot_vector3_bounce")
    vector3_bounce :: proc "c" (p_self : ^Vector3, p_n : ^Vector3) -> Vector3 ---;

    @(link_name="godot_vector3_reflect")
    vector3_reflect :: proc "c" (p_self : ^Vector3, p_n : ^Vector3) -> Vector3 ---;

    @(link_name="godot_vector3_operator_add")
    vector3_operator_add :: proc "c" (p_self : ^Vector3, p_b : ^Vector3) -> Vector3 ---;

    @(link_name="godot_vector3_operator_subtract")
    vector3_operator_subtract :: proc "c" (p_self : ^Vector3, p_b : ^Vector3) -> Vector3 ---;

    @(link_name="godot_vector3_operator_multiply_vector")
    vector3_operator_multiply_vector :: proc "c" (p_self : ^Vector3, p_b : ^Vector3) -> Vector3 ---;

    @(link_name="godot_vector3_operator_multiply_scalar")
    vector3_operator_multiply_scalar :: proc "c" (p_self : ^Vector3, p_b : _c.float) -> Vector3 ---;

    @(link_name="godot_vector3_operator_divide_vector")
    vector3_operator_divide_vector :: proc "c" (p_self : ^Vector3, p_b : ^Vector3) -> Vector3 ---;

    @(link_name="godot_vector3_operator_divide_scalar")
    vector3_operator_divide_scalar :: proc "c" (p_self : ^Vector3, p_b : _c.float) -> Vector3 ---;

    @(link_name="godot_vector3_operator_equal")
    vector3_operator_equal :: proc "c" (p_self : ^Vector3, p_b : ^Vector3) -> Bool ---;

    @(link_name="godot_vector3_operator_less")
    vector3_operator_less :: proc "c" (p_self : ^Vector3, p_b : ^Vector3) -> Bool ---;

    @(link_name="godot_vector3_operator_neg")
    vector3_operator_neg :: proc "c" (p_self : ^Vector3) -> Vector3 ---;

    @(link_name="godot_vector3_set_axis")
    vector3_set_axis :: proc "c" (p_self : ^Vector3, p_axis : Vector3Axis, p_val : _c.float) ---;

    @(link_name="godot_vector3_get_axis")
    vector3_get_axis :: proc "c" (p_self : ^Vector3, p_axis : Vector3Axis) -> _c.float ---;

    @(link_name="godot_nativescript_register_class")
    nativescript_register_class :: proc "c" (p_gdnative_handle : rawptr, p_name : cstring, p_base : cstring, p_create_func : InstanceCreateFunc, p_destroy_func : InstanceDestroyFunc) ---;

    @(link_name="godot_nativescript_register_tool_class")
    nativescript_register_tool_class :: proc "c" (p_gdnative_handle : rawptr, p_name : cstring, p_base : cstring, p_create_func : InstanceCreateFunc, p_destroy_func : InstanceDestroyFunc) ---;

    @(link_name="godot_nativescript_register_method")
    nativescript_register_method :: proc "c" (p_gdnative_handle : rawptr, p_name : cstring, p_function_name : cstring, p_attr : MethodAttributes, p_method : InstanceMethod) ---;

    @(link_name="godot_nativescript_register_property")
    nativescript_register_property :: proc "c" (p_gdnative_handle : rawptr, p_name : cstring, p_path : cstring, p_attr : ^PropertyAttributes, p_set_func : PropertySetFunc, p_get_func : PropertyGetFunc) ---;

    @(link_name="godot_nativescript_register_signal")
    nativescript_register_signal :: proc "c" (p_gdnative_handle : rawptr, p_name : cstring, p_signal : ^Signal) ---;

    @(link_name="godot_nativescript_get_userdata")
    nativescript_get_userdata :: proc "c" (p_instance : rawptr) -> rawptr ---;

    @(link_name="godot_nativescript_set_method_argument_information")
    nativescript_set_method_argument_information :: proc "c" (p_gdnative_handle : rawptr, p_name : cstring, p_function_name : cstring, p_num_args : _c.int, p_args : ^MethodArg) ---;

    @(link_name="godot_nativescript_set_class_documentation")
    nativescript_set_class_documentation :: proc "c" (p_gdnative_handle : rawptr, p_name : cstring, p_documentation : String) ---;

    @(link_name="godot_nativescript_set_method_documentation")
    nativescript_set_method_documentation :: proc "c" (p_gdnative_handle : rawptr, p_name : cstring, p_function_name : cstring, p_documentation : String) ---;

    @(link_name="godot_nativescript_set_property_documentation")
    nativescript_set_property_documentation :: proc "c" (p_gdnative_handle : rawptr, p_name : cstring, p_path : cstring, p_documentation : String) ---;

    @(link_name="godot_nativescript_set_signal_documentation")
    nativescript_set_signal_documentation :: proc "c" (p_gdnative_handle : rawptr, p_name : cstring, p_signal_name : cstring, p_documentation : String) ---;

    @(link_name="godot_nativescript_set_global_type_tag")
    nativescript_set_global_type_tag :: proc "c" (p_idx : _c.int, p_name : cstring, p_type_tag : rawptr) ---;

    @(link_name="godot_nativescript_get_global_type_tag")
    nativescript_get_global_type_tag :: proc "c" (p_idx : _c.int, p_name : cstring) -> rawptr ---;

    @(link_name="godot_nativescript_set_type_tag")
    nativescript_set_type_tag :: proc "c" (p_gdnative_handle : rawptr, p_name : cstring, p_type_tag : rawptr) ---;

    @(link_name="godot_nativescript_get_type_tag")
    nativescript_get_type_tag :: proc "c" (p_object : rawptr) -> rawptr ---;

    @(link_name="godot_nativescript_register_instance_binding_data_functions")
    nativescript_register_instance_binding_data_functions :: proc "c" (p_binding_functions : InstanceBindingFunctions) -> _c.int ---;

    @(link_name="godot_nativescript_unregister_instance_binding_data_functions")
    nativescript_unregister_instance_binding_data_functions :: proc "c" (p_idx : _c.int) ---;

    @(link_name="godot_nativescript_get_instance_binding_data")
    nativescript_get_instance_binding_data :: proc "c" (p_idx : _c.int, p_object : rawptr) -> rawptr ---;

    @(link_name="godot_nativescript_profiling_add_data")
    nativescript_profiling_add_data :: proc "c" (p_signature : cstring, p_time : u64) ---;

    @(link_name="godot_net_bind_stream_peer")
    net_bind_stream_peer :: proc "c" (p_obj : rawptr, p_interface : ^NetStreamPeer) ---;

    @(link_name="godot_net_bind_packet_peer")
    net_bind_packet_peer :: proc "c" (p_obj : rawptr, unamed0 : ^NetPacketPeer) ---;

    @(link_name="godot_net_bind_multiplayer_peer")
    net_bind_multiplayer_peer :: proc "c" (p_obj : rawptr, unamed0 : ^NetMultiplayerPeer) ---;

    @(link_name="godot_net_set_webrtc_library")
    net_set_webrtc_library :: proc "c" (unamed0 : ^NetWebrtcLibrary) -> Error ---;

    @(link_name="godot_net_bind_webrtc_peer_connection")
    net_bind_webrtc_peer_connection :: proc "c" (p_obj : rawptr, unamed0 : ^NetWebrtcPeerConnection) ---;

    @(link_name="godot_net_bind_webrtc_data_channel")
    net_bind_webrtc_data_channel :: proc "c" (p_obj : rawptr, unamed0 : ^NetWebrtcDataChannel) ---;

    @(link_name="godot_pluginscript_register_language")
    pluginscript_register_language :: proc "c" (language_desc : ^PluginscriptLanguageDesc) ---;

    @(link_name="godot_videodecoder_file_read")
    videodecoder_file_read :: proc "c" (file_ptr : rawptr, buf : ^u8, buf_size : _c.int) -> _c.int ---;

    @(link_name="godot_videodecoder_file_seek")
    videodecoder_file_seek :: proc "c" (file_ptr : rawptr, pos : i64, whence : _c.int) -> i64 ---;

    @(link_name="godot_videodecoder_register_decoder")
    videodecoder_register_decoder :: proc "c" (p_interface : ^VideodecoderInterfaceGdnative) ---;

}
