typedef enum {
 GODOT_METHOD_RPC_MODE_DISABLED,
 GODOT_METHOD_RPC_MODE_REMOTE,
 GODOT_METHOD_RPC_MODE_MASTER,
 GODOT_METHOD_RPC_MODE_PUPPET,
 GODOT_METHOD_RPC_MODE_SLAVE = GODOT_METHOD_RPC_MODE_PUPPET,
 GODOT_METHOD_RPC_MODE_REMOTESYNC,
 GODOT_METHOD_RPC_MODE_SYNC = GODOT_METHOD_RPC_MODE_REMOTESYNC,
 GODOT_METHOD_RPC_MODE_MASTERSYNC,
 GODOT_METHOD_RPC_MODE_PUPPETSYNC,
} godot_method_rpc_mode;

typedef enum {
 GODOT_PROPERTY_HINT_NONE,
 GODOT_PROPERTY_HINT_RANGE,
 GODOT_PROPERTY_HINT_EXP_RANGE,
 GODOT_PROPERTY_HINT_ENUM,
 GODOT_PROPERTY_HINT_EXP_EASING,
 GODOT_PROPERTY_HINT_LENGTH,
 GODOT_PROPERTY_HINT_SPRITE_FRAME,
 GODOT_PROPERTY_HINT_KEY_ACCEL,
 GODOT_PROPERTY_HINT_FLAGS,
 GODOT_PROPERTY_HINT_LAYERS_2D_RENDER,
 GODOT_PROPERTY_HINT_LAYERS_2D_PHYSICS,
 GODOT_PROPERTY_HINT_LAYERS_3D_RENDER,
 GODOT_PROPERTY_HINT_LAYERS_3D_PHYSICS,
 GODOT_PROPERTY_HINT_FILE,
 GODOT_PROPERTY_HINT_DIR,
 GODOT_PROPERTY_HINT_GLOBAL_FILE,
 GODOT_PROPERTY_HINT_GLOBAL_DIR,
 GODOT_PROPERTY_HINT_RESOURCE_TYPE,
 GODOT_PROPERTY_HINT_MULTILINE_TEXT,
 GODOT_PROPERTY_HINT_PLACEHOLDER_TEXT,
 GODOT_PROPERTY_HINT_COLOR_NO_ALPHA,
 GODOT_PROPERTY_HINT_IMAGE_COMPRESS_LOSSY,
 GODOT_PROPERTY_HINT_IMAGE_COMPRESS_LOSSLESS,
 GODOT_PROPERTY_HINT_OBJECT_ID,
 GODOT_PROPERTY_HINT_TYPE_STRING,
 GODOT_PROPERTY_HINT_NODE_PATH_TO_EDITED_NODE,
 GODOT_PROPERTY_HINT_METHOD_OF_VARIANT_TYPE,
 GODOT_PROPERTY_HINT_METHOD_OF_BASE_TYPE,
 GODOT_PROPERTY_HINT_METHOD_OF_INSTANCE,
 GODOT_PROPERTY_HINT_METHOD_OF_SCRIPT,
 GODOT_PROPERTY_HINT_PROPERTY_OF_VARIANT_TYPE,
 GODOT_PROPERTY_HINT_PROPERTY_OF_BASE_TYPE,
 GODOT_PROPERTY_HINT_PROPERTY_OF_INSTANCE,
 GODOT_PROPERTY_HINT_PROPERTY_OF_SCRIPT,
 GODOT_PROPERTY_HINT_MAX,
} godot_property_hint;

typedef enum {

 GODOT_PROPERTY_USAGE_STORAGE = 1,
 GODOT_PROPERTY_USAGE_EDITOR = 2,
 GODOT_PROPERTY_USAGE_NETWORK = 4,
 GODOT_PROPERTY_USAGE_EDITOR_HELPER = 8,
 GODOT_PROPERTY_USAGE_CHECKABLE = 16,
 GODOT_PROPERTY_USAGE_CHECKED = 32,
 GODOT_PROPERTY_USAGE_INTERNATIONALIZED = 64,
 GODOT_PROPERTY_USAGE_GROUP = 128,
 GODOT_PROPERTY_USAGE_CATEGORY = 256,
 GODOT_PROPERTY_USAGE_STORE_IF_NONZERO = 512,
 GODOT_PROPERTY_USAGE_STORE_IF_NONONE = 1024,
 GODOT_PROPERTY_USAGE_NO_INSTANCE_STATE = 2048,
 GODOT_PROPERTY_USAGE_RESTART_IF_CHANGED = 4096,
 GODOT_PROPERTY_USAGE_SCRIPT_VARIABLE = 8192,
 GODOT_PROPERTY_USAGE_STORE_IF_NULL = 16384,
 GODOT_PROPERTY_USAGE_ANIMATE_AS_TRIGGER = 32768,
 GODOT_PROPERTY_USAGE_UPDATE_ALL_IF_MODIFIED = 65536,

 GODOT_PROPERTY_USAGE_DEFAULT = GODOT_PROPERTY_USAGE_STORAGE | GODOT_PROPERTY_USAGE_EDITOR | GODOT_PROPERTY_USAGE_NETWORK,
 GODOT_PROPERTY_USAGE_DEFAULT_INTL = GODOT_PROPERTY_USAGE_STORAGE | GODOT_PROPERTY_USAGE_EDITOR | GODOT_PROPERTY_USAGE_NETWORK | GODOT_PROPERTY_USAGE_INTERNATIONALIZED,
 GODOT_PROPERTY_USAGE_NOEDITOR = GODOT_PROPERTY_USAGE_STORAGE | GODOT_PROPERTY_USAGE_NETWORK,
} godot_property_usage_flags;

typedef struct {
 godot_method_rpc_mode rset_type;

 godot_int type;
 godot_property_hint hint;
 godot_string hint_string;
 godot_property_usage_flags usage;
 godot_variant default_value;
} godot_property_attributes;

typedef struct {

 GDCALLINGCONV void *(*create_func)(godot_object *, void *);
 void *method_data;
 GDCALLINGCONV void (*free_func)(void *);
} godot_instance_create_func;

typedef struct {

 GDCALLINGCONV void (*destroy_func)(godot_object *, void *, void *);
 void *method_data;
 GDCALLINGCONV void (*free_func)(void *);
} godot_instance_destroy_func;

void GDAPI godot_nativescript_register_class(void *p_gdnative_handle, const char *p_name, const char *p_base, godot_instance_create_func p_create_func, godot_instance_destroy_func p_destroy_func);

void GDAPI godot_nativescript_register_tool_class(void *p_gdnative_handle, const char *p_name, const char *p_base, godot_instance_create_func p_create_func, godot_instance_destroy_func p_destroy_func);

typedef struct {
 godot_method_rpc_mode rpc_type;
} godot_method_attributes;

typedef struct {

 GDCALLINGCONV godot_variant (*method)(godot_object *, void *, void *, int, godot_variant **);
 void *method_data;
 GDCALLINGCONV void (*free_func)(void *);
} godot_instance_method;

void GDAPI godot_nativescript_register_method(void *p_gdnative_handle, const char *p_name, const char *p_function_name, godot_method_attributes p_attr, godot_instance_method p_method);

typedef struct {

 GDCALLINGCONV void (*set_func)(godot_object *, void *, void *, godot_variant *);
 void *method_data;
 GDCALLINGCONV void (*free_func)(void *);
} godot_property_set_func;

typedef struct {

 GDCALLINGCONV godot_variant (*get_func)(godot_object *, void *, void *);
 void *method_data;
 GDCALLINGCONV void (*free_func)(void *);
} godot_property_get_func;

void GDAPI godot_nativescript_register_property(void *p_gdnative_handle, const char *p_name, const char *p_path, godot_property_attributes *p_attr, godot_property_set_func p_set_func, godot_property_get_func p_get_func);

typedef struct {
 godot_string name;
 godot_int type;
 godot_property_hint hint;
 godot_string hint_string;
 godot_property_usage_flags usage;
 godot_variant default_value;
} godot_signal_argument;

typedef struct {
 godot_string name;
 int num_args;
 godot_signal_argument *args;
 int num_default_args;
 godot_variant *default_args;
} godot_signal;

void GDAPI godot_nativescript_register_signal(void *p_gdnative_handle, const char *p_name, const godot_signal *p_signal);

void GDAPI *godot_nativescript_get_userdata(godot_object *p_instance);
typedef struct {
 godot_string name;

 godot_variant_type type;
 godot_property_hint hint;
 godot_string hint_string;
} godot_method_arg;

void GDAPI godot_nativescript_set_method_argument_information(void *p_gdnative_handle, const char *p_name, const char *p_function_name, int p_num_args, const godot_method_arg *p_args);



void GDAPI godot_nativescript_set_class_documentation(void *p_gdnative_handle, const char *p_name, godot_string p_documentation);
void GDAPI godot_nativescript_set_method_documentation(void *p_gdnative_handle, const char *p_name, const char *p_function_name, godot_string p_documentation);
void GDAPI godot_nativescript_set_property_documentation(void *p_gdnative_handle, const char *p_name, const char *p_path, godot_string p_documentation);
void GDAPI godot_nativescript_set_signal_documentation(void *p_gdnative_handle, const char *p_name, const char *p_signal_name, godot_string p_documentation);



void GDAPI godot_nativescript_set_global_type_tag(int p_idx, const char *p_name, const void *p_type_tag);
const void GDAPI *godot_nativescript_get_global_type_tag(int p_idx, const char *p_name);

void GDAPI godot_nativescript_set_type_tag(void *p_gdnative_handle, const char *p_name, const void *p_type_tag);
const void GDAPI *godot_nativescript_get_type_tag(const godot_object *p_object);



typedef struct {
 GDCALLINGCONV void *(*alloc_instance_binding_data)(void *, const void *, godot_object *);
 GDCALLINGCONV void (*free_instance_binding_data)(void *, void *);
 GDCALLINGCONV void (*refcount_incremented_instance_binding)(void *, godot_object *);
 GDCALLINGCONV bool (*refcount_decremented_instance_binding)(void *, godot_object *);
 void *data;
 GDCALLINGCONV void (*free_func)(void *);
} godot_instance_binding_functions;

int GDAPI godot_nativescript_register_instance_binding_data_functions(godot_instance_binding_functions p_binding_functions);
void GDAPI godot_nativescript_unregister_instance_binding_data_functions(int p_idx);

void GDAPI *godot_nativescript_get_instance_binding_data(int p_idx, godot_object *p_object);

void GDAPI godot_nativescript_profiling_add_data(const char *p_signature, uint64_t p_time);
