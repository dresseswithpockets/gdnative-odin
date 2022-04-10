typedef struct {
 uint8_t _dont_touch_that[sizeof(void *)];
} godot_rid;
void GDAPI godot_rid_new(godot_rid *r_dest);

godot_int GDAPI godot_rid_get_id(const godot_rid *p_self);

void GDAPI godot_rid_new_with_resource(godot_rid *r_dest, const godot_object *p_from);

godot_bool GDAPI godot_rid_operator_equal(const godot_rid *p_self, const godot_rid *p_b);

godot_bool GDAPI godot_rid_operator_less(const godot_rid *p_self, const godot_rid *p_b);
