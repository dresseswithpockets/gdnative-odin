typedef struct {
 uint8_t _dont_touch_that[12];
} godot_vector3;
typedef enum {
 GODOT_VECTOR3_AXIS_X,
 GODOT_VECTOR3_AXIS_Y,
 GODOT_VECTOR3_AXIS_Z,
} godot_vector3_axis;

void GDAPI godot_vector3_new(godot_vector3 *r_dest, const godot_real p_x, const godot_real p_y, const godot_real p_z);

godot_string GDAPI godot_vector3_as_string(const godot_vector3 *p_self);

godot_int GDAPI godot_vector3_min_axis(const godot_vector3 *p_self);

godot_int GDAPI godot_vector3_max_axis(const godot_vector3 *p_self);

godot_real GDAPI godot_vector3_length(const godot_vector3 *p_self);

godot_real GDAPI godot_vector3_length_squared(const godot_vector3 *p_self);

godot_bool GDAPI godot_vector3_is_normalized(const godot_vector3 *p_self);

godot_vector3 GDAPI godot_vector3_normalized(const godot_vector3 *p_self);

godot_vector3 GDAPI godot_vector3_inverse(const godot_vector3 *p_self);

godot_vector3 GDAPI godot_vector3_snapped(const godot_vector3 *p_self, const godot_vector3 *p_by);

godot_vector3 GDAPI godot_vector3_rotated(const godot_vector3 *p_self, const godot_vector3 *p_axis, const godot_real p_phi);

godot_vector3 GDAPI godot_vector3_linear_interpolate(const godot_vector3 *p_self, const godot_vector3 *p_b, const godot_real p_t);

godot_vector3 GDAPI godot_vector3_cubic_interpolate(const godot_vector3 *p_self, const godot_vector3 *p_b, const godot_vector3 *p_pre_a, const godot_vector3 *p_post_b, const godot_real p_t);

godot_vector3 GDAPI godot_vector3_move_toward(const godot_vector3 *p_self, const godot_vector3 *p_to, const godot_real p_delta);

godot_real GDAPI godot_vector3_dot(const godot_vector3 *p_self, const godot_vector3 *p_b);

godot_vector3 GDAPI godot_vector3_cross(const godot_vector3 *p_self, const godot_vector3 *p_b);

godot_basis GDAPI godot_vector3_outer(const godot_vector3 *p_self, const godot_vector3 *p_b);

godot_basis GDAPI godot_vector3_to_diagonal_matrix(const godot_vector3 *p_self);

godot_vector3 GDAPI godot_vector3_abs(const godot_vector3 *p_self);

godot_vector3 GDAPI godot_vector3_floor(const godot_vector3 *p_self);

godot_vector3 GDAPI godot_vector3_ceil(const godot_vector3 *p_self);

godot_vector3 GDAPI godot_vector3_direction_to(const godot_vector3 *p_self, const godot_vector3 *p_b);

godot_real GDAPI godot_vector3_distance_to(const godot_vector3 *p_self, const godot_vector3 *p_b);

godot_real GDAPI godot_vector3_distance_squared_to(const godot_vector3 *p_self, const godot_vector3 *p_b);

godot_real GDAPI godot_vector3_angle_to(const godot_vector3 *p_self, const godot_vector3 *p_to);

godot_vector3 GDAPI godot_vector3_slide(const godot_vector3 *p_self, const godot_vector3 *p_n);

godot_vector3 GDAPI godot_vector3_bounce(const godot_vector3 *p_self, const godot_vector3 *p_n);

godot_vector3 GDAPI godot_vector3_reflect(const godot_vector3 *p_self, const godot_vector3 *p_n);

godot_vector3 GDAPI godot_vector3_operator_add(const godot_vector3 *p_self, const godot_vector3 *p_b);

godot_vector3 GDAPI godot_vector3_operator_subtract(const godot_vector3 *p_self, const godot_vector3 *p_b);

godot_vector3 GDAPI godot_vector3_operator_multiply_vector(const godot_vector3 *p_self, const godot_vector3 *p_b);

godot_vector3 GDAPI godot_vector3_operator_multiply_scalar(const godot_vector3 *p_self, const godot_real p_b);

godot_vector3 GDAPI godot_vector3_operator_divide_vector(const godot_vector3 *p_self, const godot_vector3 *p_b);

godot_vector3 GDAPI godot_vector3_operator_divide_scalar(const godot_vector3 *p_self, const godot_real p_b);

godot_bool GDAPI godot_vector3_operator_equal(const godot_vector3 *p_self, const godot_vector3 *p_b);

godot_bool GDAPI godot_vector3_operator_less(const godot_vector3 *p_self, const godot_vector3 *p_b);

godot_vector3 GDAPI godot_vector3_operator_neg(const godot_vector3 *p_self);

void GDAPI godot_vector3_set_axis(godot_vector3 *p_self, const godot_vector3_axis p_axis, const godot_real p_val);

godot_real GDAPI godot_vector3_get_axis(const godot_vector3 *p_self, const godot_vector3_axis p_axis);
