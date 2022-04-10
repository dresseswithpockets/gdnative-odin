typedef void godot_pluginscript_instance_data;
typedef void godot_pluginscript_script_data;
typedef void godot_pluginscript_language_data;




typedef struct {
 godot_pluginscript_instance_data *(*init)(godot_pluginscript_script_data *p_data, godot_object *p_owner);
 void (*finish)(godot_pluginscript_instance_data *p_data);

 godot_bool (*set_prop)(godot_pluginscript_instance_data *p_data, const godot_string *p_name, const godot_variant *p_value);
 godot_bool (*get_prop)(godot_pluginscript_instance_data *p_data, const godot_string *p_name, godot_variant *r_ret);

 godot_variant (*call_method)(godot_pluginscript_instance_data *p_data,
   const godot_string_name *p_method, const godot_variant **p_args,
   int p_argcount, godot_variant_call_error *r_error);

 void (*notification)(godot_pluginscript_instance_data *p_data, int p_notification);

 godot_method_rpc_mode (*get_rpc_mode)(godot_pluginscript_instance_data *p_data, const godot_string *p_method);
 godot_method_rpc_mode (*get_rset_mode)(godot_pluginscript_instance_data *p_data, const godot_string *p_variable);





 void (*refcount_incremented)(godot_pluginscript_instance_data *p_data);
 bool (*refcount_decremented)(godot_pluginscript_instance_data *p_data);
} godot_pluginscript_instance_desc;



typedef struct {
 godot_pluginscript_script_data *data;
 godot_string_name name;
 godot_bool is_tool;
 godot_string_name base;


 godot_dictionary member_lines;
 godot_array methods;

 godot_array signals;
 godot_array properties;
} godot_pluginscript_script_manifest;

typedef struct {
 godot_pluginscript_script_manifest (*init)(godot_pluginscript_language_data *p_data, const godot_string *p_path, const godot_string *p_source, godot_error *r_error);
 void (*finish)(godot_pluginscript_script_data *p_data);
 godot_pluginscript_instance_desc instance_desc;
} godot_pluginscript_script_desc;



typedef struct {
 godot_string_name signature;
 godot_int call_count;
 godot_int total_time;
 godot_int self_time;
} godot_pluginscript_profiling_data;

typedef struct {
 const char *name;
 const char *type;
 const char *extension;
 const char **recognized_extensions;
 godot_pluginscript_language_data *(*init)();
 void (*finish)(godot_pluginscript_language_data *p_data);
 const char **reserved_words;
 const char **comment_delimiters;
 const char **string_delimiters;
 godot_bool has_named_classes;
 godot_bool supports_builtin_mode;

 godot_string (*get_template_source_code)(godot_pluginscript_language_data *p_data, const godot_string *p_class_name, const godot_string *p_base_class_name);
 godot_bool (*validate)(godot_pluginscript_language_data *p_data, const godot_string *p_script, int *r_line_error, int *r_col_error, godot_string *r_test_error, const godot_string *p_path, godot_pool_string_array *r_functions);
 int (*find_function)(godot_pluginscript_language_data *p_data, const godot_string *p_function, const godot_string *p_code);
 godot_string (*make_function)(godot_pluginscript_language_data *p_data, const godot_string *p_class, const godot_string *p_name, const godot_pool_string_array *p_args);
 godot_error (*complete_code)(godot_pluginscript_language_data *p_data, const godot_string *p_code, const godot_string *p_path, godot_object *p_owner, godot_array *r_options, godot_bool *r_force, godot_string *r_call_hint);
 void (*auto_indent_code)(godot_pluginscript_language_data *p_data, godot_string *p_code, int p_from_line, int p_to_line);

 void (*add_global_constant)(godot_pluginscript_language_data *p_data, const godot_string *p_variable, const godot_variant *p_value);
 godot_string (*debug_get_error)(godot_pluginscript_language_data *p_data);
 int (*debug_get_stack_level_count)(godot_pluginscript_language_data *p_data);
 int (*debug_get_stack_level_line)(godot_pluginscript_language_data *p_data, int p_level);
 godot_string (*debug_get_stack_level_function)(godot_pluginscript_language_data *p_data, int p_level);
 godot_string (*debug_get_stack_level_source)(godot_pluginscript_language_data *p_data, int p_level);
 void (*debug_get_stack_level_locals)(godot_pluginscript_language_data *p_data, int p_level, godot_pool_string_array *p_locals, godot_array *p_values, int p_max_subitems, int p_max_depth);
 void (*debug_get_stack_level_members)(godot_pluginscript_language_data *p_data, int p_level, godot_pool_string_array *p_members, godot_array *p_values, int p_max_subitems, int p_max_depth);
 void (*debug_get_globals)(godot_pluginscript_language_data *p_data, godot_pool_string_array *p_locals, godot_array *p_values, int p_max_subitems, int p_max_depth);
 godot_string (*debug_parse_stack_level_expression)(godot_pluginscript_language_data *p_data, int p_level, const godot_string *p_expression, int p_max_subitems, int p_max_depth);


 void (*get_public_functions)(godot_pluginscript_language_data *p_data, godot_array *r_functions);
 void (*get_public_constants)(godot_pluginscript_language_data *p_data, godot_dictionary *r_constants);

 void (*profiling_start)(godot_pluginscript_language_data *p_data);
 void (*profiling_stop)(godot_pluginscript_language_data *p_data);
 int (*profiling_get_accumulated_data)(godot_pluginscript_language_data *p_data, godot_pluginscript_profiling_data *r_info, int p_info_max);
 int (*profiling_get_frame_data)(godot_pluginscript_language_data *p_data, godot_pluginscript_profiling_data *r_info, int p_info_max);
 void (*profiling_frame)(godot_pluginscript_language_data *p_data);

 godot_pluginscript_script_desc script_desc;
} godot_pluginscript_language_desc;

void GDAPI godot_pluginscript_register_language(const godot_pluginscript_language_desc *language_desc);
