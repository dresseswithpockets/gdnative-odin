typedef struct {
 godot_gdnative_api_version version;
 void *(*constructor)(godot_object *);
 void (*destructor)(void *);
 godot_string (*get_name)(const void *);
 godot_int (*get_capabilities)(const void *);
 godot_bool (*get_anchor_detection_is_enabled)(const void *);
 void (*set_anchor_detection_is_enabled)(void *, godot_bool);
 godot_bool (*is_stereo)(const void *);
 godot_bool (*is_initialized)(const void *);
 godot_bool (*initialize)(void *);
 void (*uninitialize)(void *);
 godot_vector2 (*get_render_targetsize)(const void *);
 godot_transform (*get_transform_for_eye)(void *, godot_int, godot_transform *);
 void (*fill_projection_for_eye)(void *, godot_real *, godot_int, godot_real, godot_real, godot_real);
 void (*commit_for_eye)(void *, godot_int, godot_rid *, godot_rect2 *);
 void (*process)(void *);

 godot_int (*get_external_texture_for_eye)(void *, godot_int);
 void (*notification)(void *, godot_int);
 godot_int (*get_camera_feed_id)(void *);

 godot_int (*get_external_depth_for_eye)(void *, godot_int);
} godot_arvr_interface_gdnative;

void GDAPI godot_arvr_register_interface(const godot_arvr_interface_gdnative *p_interface);


godot_real GDAPI godot_arvr_get_worldscale();
godot_transform GDAPI godot_arvr_get_reference_frame();


void GDAPI godot_arvr_blit(godot_int p_eye, godot_rid *p_render_target, godot_rect2 *p_rect);
godot_int GDAPI godot_arvr_get_texid(godot_rid *p_render_target);


godot_int GDAPI godot_arvr_add_controller(char *p_device_name, godot_int p_hand, godot_bool p_tracks_orientation, godot_bool p_tracks_position);
void GDAPI godot_arvr_remove_controller(godot_int p_controller_id);
void GDAPI godot_arvr_set_controller_transform(godot_int p_controller_id, godot_transform *p_transform, godot_bool p_tracks_orientation, godot_bool p_tracks_position);
void GDAPI godot_arvr_set_controller_button(godot_int p_controller_id, godot_int p_button, godot_bool p_is_pressed);
void GDAPI godot_arvr_set_controller_axis(godot_int p_controller_id, godot_int p_axis, godot_real p_value, godot_bool p_can_be_negative);
godot_real GDAPI godot_arvr_get_controller_rumble(godot_int p_controller_id);


void GDAPI godot_arvr_set_interface(godot_object *p_arvr_interface, const godot_arvr_interface_gdnative *p_gdn_interface);
godot_int GDAPI godot_arvr_get_depthid(godot_rid *p_render_target);
