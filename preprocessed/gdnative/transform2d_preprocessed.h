typedef struct {
 uint8_t _dont_touch_that[24];
} godot_transform2d;
void GDAPI godot_transform2d_new(godot_transform2d *r_dest, const godot_real p_rot, const godot_vector2 *p_pos);
void GDAPI godot_transform2d_new_axis_origin(godot_transform2d *r_dest, const godot_vector2 *p_x_axis, const godot_vector2 *p_y_axis, const godot_vector2 *p_origin);

godot_string GDAPI godot_transform2d_as_string(const godot_transform2d *p_self);

godot_transform2d GDAPI godot_transform2d_inverse(const godot_transform2d *p_self);

godot_transform2d GDAPI godot_transform2d_affine_inverse(const godot_transform2d *p_self);

godot_real GDAPI godot_transform2d_get_rotation(const godot_transform2d *p_self);

godot_vector2 GDAPI godot_transform2d_get_origin(const godot_transform2d *p_self);

godot_vector2 GDAPI godot_transform2d_get_scale(const godot_transform2d *p_self);

godot_transform2d GDAPI godot_transform2d_orthonormalized(const godot_transform2d *p_self);

godot_transform2d GDAPI godot_transform2d_rotated(const godot_transform2d *p_self, const godot_real p_phi);

godot_transform2d GDAPI godot_transform2d_scaled(const godot_transform2d *p_self, const godot_vector2 *p_scale);

godot_transform2d GDAPI godot_transform2d_translated(const godot_transform2d *p_self, const godot_vector2 *p_offset);

godot_vector2 GDAPI godot_transform2d_xform_vector2(const godot_transform2d *p_self, const godot_vector2 *p_v);

godot_vector2 GDAPI godot_transform2d_xform_inv_vector2(const godot_transform2d *p_self, const godot_vector2 *p_v);

godot_vector2 GDAPI godot_transform2d_basis_xform_vector2(const godot_transform2d *p_self, const godot_vector2 *p_v);

godot_vector2 GDAPI godot_transform2d_basis_xform_inv_vector2(const godot_transform2d *p_self, const godot_vector2 *p_v);

godot_transform2d GDAPI godot_transform2d_interpolate_with(const godot_transform2d *p_self, const godot_transform2d *p_m, const godot_real p_c);

godot_bool GDAPI godot_transform2d_operator_equal(const godot_transform2d *p_self, const godot_transform2d *p_b);

godot_transform2d GDAPI godot_transform2d_operator_multiply(const godot_transform2d *p_self, const godot_transform2d *p_b);

void GDAPI godot_transform2d_new_identity(godot_transform2d *r_dest);

godot_rect2 GDAPI godot_transform2d_xform_rect2(const godot_transform2d *p_self, const godot_rect2 *p_v);

godot_rect2 GDAPI godot_transform2d_xform_inv_rect2(const godot_transform2d *p_self, const godot_rect2 *p_v);
