typedef struct {
 godot_gdnative_api_version version;


 void (*unregistered)();



 godot_error (*create_peer_connection)(godot_object *);

 void *next;
} godot_net_webrtc_library;


typedef struct {
 godot_gdnative_api_version version;

 godot_object *data;


 godot_int (*get_connection_state)(const void *);

 godot_error (*initialize)(void *, const godot_dictionary *);
 godot_object *(*create_data_channel)(void *, const char *p_channel_name, const godot_dictionary *);
 godot_error (*create_offer)(void *);
 godot_error (*create_answer)(void *);
 godot_error (*set_remote_description)(void *, const char *, const char *);
 godot_error (*set_local_description)(void *, const char *, const char *);
 godot_error (*add_ice_candidate)(void *, const char *, int, const char *);
 godot_error (*poll)(void *);
 void (*close)(void *);

 void *next;
} godot_net_webrtc_peer_connection;


typedef struct {
 godot_gdnative_api_version version;

 godot_object *data;


 godot_error (*get_packet)(void *, const uint8_t **, int *);
 godot_error (*put_packet)(void *, const uint8_t *, int);
 godot_int (*get_available_packet_count)(const void *);
 godot_int (*get_max_packet_size)(const void *);


 void (*set_write_mode)(void *, godot_int);
 godot_int (*get_write_mode)(const void *);
 bool (*was_string_packet)(const void *);

 godot_int (*get_ready_state)(const void *);
 const char *(*get_label)(const void *);
 bool (*is_ordered)(const void *);
 int (*get_id)(const void *);
 int (*get_max_packet_life_time)(const void *);
 int (*get_max_retransmits)(const void *);
 const char *(*get_protocol)(const void *);
 bool (*is_negotiated)(const void *);

 godot_error (*poll)(void *);
 void (*close)(void *);

 void *next;
} godot_net_webrtc_data_channel;


typedef struct {
 int (*get_buffered_amount)(const void *);

 void *next;
} godot_net_webrtc_data_channel_ext;


godot_error GDAPI godot_net_set_webrtc_library(const godot_net_webrtc_library *);

void GDAPI godot_net_bind_webrtc_peer_connection(godot_object *p_obj, const godot_net_webrtc_peer_connection *);

void GDAPI godot_net_bind_webrtc_data_channel(godot_object *p_obj, const godot_net_webrtc_data_channel *);
