typedef struct {
 godot_gdnative_api_version version;
 godot_object *data;


 godot_error (*get_data)(void *user, uint8_t *p_buffer, int p_bytes);
 godot_error (*get_partial_data)(void *user, uint8_t *p_buffer, int p_bytes, int *r_received);
 godot_error (*put_data)(void *user, const uint8_t *p_data, int p_bytes);
 godot_error (*put_partial_data)(void *user, const uint8_t *p_data, int p_bytes, int *r_sent);

 int (*get_available_bytes)(const void *user);

 void *next;
} godot_net_stream_peer;


void godot_net_bind_stream_peer(godot_object *p_obj, const godot_net_stream_peer *p_interface);

typedef struct {
 godot_gdnative_api_version version;

 godot_object *data;


 godot_error (*get_packet)(void *, const uint8_t **, int *);
 godot_error (*put_packet)(void *, const uint8_t *, int);
 godot_int (*get_available_packet_count)(const void *);
 godot_int (*get_max_packet_size)(const void *);

 void *next;
} godot_net_packet_peer;


void GDAPI godot_net_bind_packet_peer(godot_object *p_obj, const godot_net_packet_peer *);

typedef struct {
 godot_gdnative_api_version version;

 godot_object *data;


 godot_error (*get_packet)(void *, const uint8_t **, int *);
 godot_error (*put_packet)(void *, const uint8_t *, int);
 godot_int (*get_available_packet_count)(const void *);
 godot_int (*get_max_packet_size)(const void *);


 void (*set_transfer_mode)(void *, godot_int);
 godot_int (*get_transfer_mode)(const void *);

 void (*set_target_peer)(void *, godot_int);
 godot_int (*get_packet_peer)(const void *);
 godot_bool (*is_server)(const void *);
 void (*poll)(void *);

 int32_t (*get_unique_id)(const void *);
 void (*set_refuse_new_connections)(void *, godot_bool);
 godot_bool (*is_refusing_new_connections)(const void *);
 godot_int (*get_connection_status)(const void *);

 void *next;
} godot_net_multiplayer_peer;


void GDAPI godot_net_bind_multiplayer_peer(godot_object *p_obj, const godot_net_multiplayer_peer *);
