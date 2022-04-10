typedef struct {
 uint8_t _dont_touch_that[sizeof(void *)];
} godot_string_name;
void GDAPI godot_string_name_new(godot_string_name *r_dest, const godot_string *p_name);
void GDAPI godot_string_name_new_data(godot_string_name *r_dest, const char *p_name);

godot_string GDAPI godot_string_name_get_name(const godot_string_name *p_self);

uint32_t GDAPI godot_string_name_get_hash(const godot_string_name *p_self);
const void GDAPI *godot_string_name_get_data_unique_pointer(const godot_string_name *p_self);

godot_bool GDAPI godot_string_name_operator_equal(const godot_string_name *p_self, const godot_string_name *p_other);
godot_bool GDAPI godot_string_name_operator_less(const godot_string_name *p_self, const godot_string_name *p_other);

void GDAPI godot_string_name_destroy(godot_string_name *p_self);
