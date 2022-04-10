typedef struct {
 uint8_t _dont_touch_that[sizeof(void *)];
} godot_node_path;
void GDAPI godot_node_path_new(godot_node_path *r_dest, const godot_string *p_from);
void GDAPI godot_node_path_new_copy(godot_node_path *r_dest, const godot_node_path *p_src);
void GDAPI godot_node_path_destroy(godot_node_path *p_self);

godot_string GDAPI godot_node_path_as_string(const godot_node_path *p_self);

godot_bool GDAPI godot_node_path_is_absolute(const godot_node_path *p_self);

godot_int GDAPI godot_node_path_get_name_count(const godot_node_path *p_self);

godot_string GDAPI godot_node_path_get_name(const godot_node_path *p_self, const godot_int p_idx);

godot_int GDAPI godot_node_path_get_subname_count(const godot_node_path *p_self);

godot_string GDAPI godot_node_path_get_subname(const godot_node_path *p_self, const godot_int p_idx);

godot_string GDAPI godot_node_path_get_concatenated_subnames(const godot_node_path *p_self);

godot_bool GDAPI godot_node_path_is_empty(const godot_node_path *p_self);

godot_bool GDAPI godot_node_path_operator_equal(const godot_node_path *p_self, const godot_node_path *p_b);

godot_node_path godot_node_path_get_as_property_path(const godot_node_path *p_self);
