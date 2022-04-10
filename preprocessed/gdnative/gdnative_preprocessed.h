typedef enum {
 GODOT_OK,
 GODOT_FAILED,
 GODOT_ERR_UNAVAILABLE,
 GODOT_ERR_UNCONFIGURED,
 GODOT_ERR_UNAUTHORIZED,
 GODOT_ERR_PARAMETER_RANGE_ERROR,
 GODOT_ERR_OUT_OF_MEMORY,
 GODOT_ERR_FILE_NOT_FOUND,
 GODOT_ERR_FILE_BAD_DRIVE,
 GODOT_ERR_FILE_BAD_PATH,
 GODOT_ERR_FILE_NO_PERMISSION,
 GODOT_ERR_FILE_ALREADY_IN_USE,
 GODOT_ERR_FILE_CANT_OPEN,
 GODOT_ERR_FILE_CANT_WRITE,
 GODOT_ERR_FILE_CANT_READ,
 GODOT_ERR_FILE_UNRECOGNIZED,
 GODOT_ERR_FILE_CORRUPT,
 GODOT_ERR_FILE_MISSING_DEPENDENCIES,
 GODOT_ERR_FILE_EOF,
 GODOT_ERR_CANT_OPEN,
 GODOT_ERR_CANT_CREATE,
 GODOT_ERR_QUERY_FAILED,
 GODOT_ERR_ALREADY_IN_USE,
 GODOT_ERR_LOCKED,
 GODOT_ERR_TIMEOUT,
 GODOT_ERR_CANT_CONNECT,
 GODOT_ERR_CANT_RESOLVE,
 GODOT_ERR_CONNECTION_ERROR,
 GODOT_ERR_CANT_ACQUIRE_RESOURCE,
 GODOT_ERR_CANT_FORK,
 GODOT_ERR_INVALID_DATA,
 GODOT_ERR_INVALID_PARAMETER,
 GODOT_ERR_ALREADY_EXISTS,
 GODOT_ERR_DOES_NOT_EXIST,
 GODOT_ERR_DATABASE_CANT_READ,
 GODOT_ERR_DATABASE_CANT_WRITE,
 GODOT_ERR_COMPILATION_FAILED,
 GODOT_ERR_METHOD_NOT_FOUND,
 GODOT_ERR_LINK_FAILED,
 GODOT_ERR_SCRIPT_FAILED,
 GODOT_ERR_CYCLIC_LINK,
 GODOT_ERR_INVALID_DECLARATION,
 GODOT_ERR_DUPLICATE_SYMBOL,
 GODOT_ERR_PARSE_ERROR,
 GODOT_ERR_BUSY,
 GODOT_ERR_SKIP,
 GODOT_ERR_HELP,
 GODOT_ERR_BUG,
 GODOT_ERR_PRINTER_ON_FIRE,
} godot_error;



typedef bool godot_bool;






typedef int godot_int;



typedef float godot_real;


typedef void godot_object;
void godot_object_destroy(godot_object *p_o);






godot_object *godot_global_get_singleton(char *p_name);



typedef struct {
 uint8_t _dont_touch_that[1];
} godot_method_bind;

godot_method_bind *godot_method_bind_get_method(const char *p_classname, const char *p_methodname);
void godot_method_bind_ptrcall(godot_method_bind *p_method_bind, godot_object *p_instance, const void **p_args, void *p_ret);
godot_variant godot_method_bind_call(godot_method_bind *p_method_bind, godot_object *p_instance, const godot_variant **p_args, const int p_arg_count, godot_variant_call_error *p_call_error);


typedef struct godot_gdnative_api_version {
 unsigned int major;
 unsigned int minor;
} godot_gdnative_api_version;

typedef struct godot_gdnative_api_struct godot_gdnative_api_struct;

struct godot_gdnative_api_struct {
 unsigned int type;
 godot_gdnative_api_version version;
 const godot_gdnative_api_struct *next;
};



typedef struct {
 godot_bool in_editor;
 uint64_t core_api_hash;
 uint64_t editor_api_hash;
 uint64_t no_api_hash;
 void (*report_version_mismatch)(const godot_object *p_library, const char *p_what, godot_gdnative_api_version p_want, godot_gdnative_api_version p_have);
 void (*report_loading_error)(const godot_object *p_library, const char *p_what);
 godot_object *gd_native_library;
 const struct godot_gdnative_core_api_struct *api_struct;
 const godot_string *active_library_path;
} godot_gdnative_init_options;

typedef struct {
 godot_bool in_editor;
} godot_gdnative_terminate_options;


typedef godot_object *(*godot_class_constructor)();

godot_class_constructor godot_get_class_constructor(const char *p_classname);

godot_dictionary godot_get_global_constants();


typedef void (*godot_gdnative_init_fn)(godot_gdnative_init_options *);
typedef void (*godot_gdnative_terminate_fn)(godot_gdnative_terminate_options *);
typedef godot_variant (*godot_gdnative_procedure_fn)(godot_array *);



typedef godot_variant (*native_call_cb)(void *, godot_array *);
void godot_register_native_call_type(const char *p_call_type, native_call_cb p_callback);


void *godot_alloc(int p_bytes);
void *godot_realloc(void *p_ptr, int p_bytes);
void godot_free(void *p_ptr);


void godot_print_error(const char *p_description, const char *p_function, const char *p_file, int p_line);
void godot_print_warning(const char *p_description, const char *p_function, const char *p_file, int p_line);
void godot_print(const godot_string *p_message);



bool godot_is_instance_valid(const godot_object *p_object);


void *godot_get_class_tag(const godot_string_name *p_class);
godot_object *godot_object_cast_to(const godot_object *p_object, void *p_class_tag);


godot_object *godot_instance_from_id(godot_int p_instance_id);
