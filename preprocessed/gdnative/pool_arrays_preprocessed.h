typedef struct {
 uint8_t _dont_touch_that[1];
} godot_pool_array_read_access;

typedef godot_pool_array_read_access godot_pool_byte_array_read_access;
typedef godot_pool_array_read_access godot_pool_int_array_read_access;
typedef godot_pool_array_read_access godot_pool_real_array_read_access;
typedef godot_pool_array_read_access godot_pool_string_array_read_access;
typedef godot_pool_array_read_access godot_pool_vector2_array_read_access;
typedef godot_pool_array_read_access godot_pool_vector3_array_read_access;
typedef godot_pool_array_read_access godot_pool_color_array_read_access;





typedef struct {
 uint8_t _dont_touch_that[1];
} godot_pool_array_write_access;

typedef godot_pool_array_write_access godot_pool_byte_array_write_access;
typedef godot_pool_array_write_access godot_pool_int_array_write_access;
typedef godot_pool_array_write_access godot_pool_real_array_write_access;
typedef godot_pool_array_write_access godot_pool_string_array_write_access;
typedef godot_pool_array_write_access godot_pool_vector2_array_write_access;
typedef godot_pool_array_write_access godot_pool_vector3_array_write_access;
typedef godot_pool_array_write_access godot_pool_color_array_write_access;







typedef struct {
 uint8_t _dont_touch_that[sizeof(void *)];
} godot_pool_byte_array;
typedef struct {
 uint8_t _dont_touch_that[sizeof(void *)];
} godot_pool_int_array;
typedef struct {
 uint8_t _dont_touch_that[sizeof(void *)];
} godot_pool_real_array;
typedef struct {
 uint8_t _dont_touch_that[sizeof(void *)];
} godot_pool_string_array;
typedef struct {
 uint8_t _dont_touch_that[sizeof(void *)];
} godot_pool_vector2_array;
typedef struct {
 uint8_t _dont_touch_that[sizeof(void *)];
} godot_pool_vector3_array;
typedef struct {
 uint8_t _dont_touch_that[sizeof(void *)];
} godot_pool_color_array;
void GDAPI godot_pool_byte_array_new(godot_pool_byte_array *r_dest);
void GDAPI godot_pool_byte_array_new_copy(godot_pool_byte_array *r_dest, const godot_pool_byte_array *p_src);
void GDAPI godot_pool_byte_array_new_with_array(godot_pool_byte_array *r_dest, const godot_array *p_a);

void GDAPI godot_pool_byte_array_append(godot_pool_byte_array *p_self, const uint8_t p_data);

void GDAPI godot_pool_byte_array_append_array(godot_pool_byte_array *p_self, const godot_pool_byte_array *p_array);

godot_error GDAPI godot_pool_byte_array_insert(godot_pool_byte_array *p_self, const godot_int p_idx, const uint8_t p_data);

void GDAPI godot_pool_byte_array_invert(godot_pool_byte_array *p_self);

void GDAPI godot_pool_byte_array_push_back(godot_pool_byte_array *p_self, const uint8_t p_data);

void GDAPI godot_pool_byte_array_remove(godot_pool_byte_array *p_self, const godot_int p_idx);

void GDAPI godot_pool_byte_array_resize(godot_pool_byte_array *p_self, const godot_int p_size);

godot_pool_byte_array_read_access GDAPI *godot_pool_byte_array_read(const godot_pool_byte_array *p_self);

godot_pool_byte_array_write_access GDAPI *godot_pool_byte_array_write(godot_pool_byte_array *p_self);

void GDAPI godot_pool_byte_array_set(godot_pool_byte_array *p_self, const godot_int p_idx, const uint8_t p_data);
uint8_t GDAPI godot_pool_byte_array_get(const godot_pool_byte_array *p_self, const godot_int p_idx);

godot_int GDAPI godot_pool_byte_array_size(const godot_pool_byte_array *p_self);

godot_bool GDAPI godot_pool_byte_array_empty(const godot_pool_byte_array *p_self);

void GDAPI godot_pool_byte_array_destroy(godot_pool_byte_array *p_self);



void GDAPI godot_pool_int_array_new(godot_pool_int_array *r_dest);
void GDAPI godot_pool_int_array_new_copy(godot_pool_int_array *r_dest, const godot_pool_int_array *p_src);
void GDAPI godot_pool_int_array_new_with_array(godot_pool_int_array *r_dest, const godot_array *p_a);

void GDAPI godot_pool_int_array_append(godot_pool_int_array *p_self, const godot_int p_data);

void GDAPI godot_pool_int_array_append_array(godot_pool_int_array *p_self, const godot_pool_int_array *p_array);

godot_error GDAPI godot_pool_int_array_insert(godot_pool_int_array *p_self, const godot_int p_idx, const godot_int p_data);

void GDAPI godot_pool_int_array_invert(godot_pool_int_array *p_self);

void GDAPI godot_pool_int_array_push_back(godot_pool_int_array *p_self, const godot_int p_data);

void GDAPI godot_pool_int_array_remove(godot_pool_int_array *p_self, const godot_int p_idx);

void GDAPI godot_pool_int_array_resize(godot_pool_int_array *p_self, const godot_int p_size);

godot_pool_int_array_read_access GDAPI *godot_pool_int_array_read(const godot_pool_int_array *p_self);

godot_pool_int_array_write_access GDAPI *godot_pool_int_array_write(godot_pool_int_array *p_self);

void GDAPI godot_pool_int_array_set(godot_pool_int_array *p_self, const godot_int p_idx, const godot_int p_data);
godot_int GDAPI godot_pool_int_array_get(const godot_pool_int_array *p_self, const godot_int p_idx);

godot_int GDAPI godot_pool_int_array_size(const godot_pool_int_array *p_self);

godot_bool GDAPI godot_pool_int_array_empty(const godot_pool_int_array *p_self);

void GDAPI godot_pool_int_array_destroy(godot_pool_int_array *p_self);



void GDAPI godot_pool_real_array_new(godot_pool_real_array *r_dest);
void GDAPI godot_pool_real_array_new_copy(godot_pool_real_array *r_dest, const godot_pool_real_array *p_src);
void GDAPI godot_pool_real_array_new_with_array(godot_pool_real_array *r_dest, const godot_array *p_a);

void GDAPI godot_pool_real_array_append(godot_pool_real_array *p_self, const godot_real p_data);

void GDAPI godot_pool_real_array_append_array(godot_pool_real_array *p_self, const godot_pool_real_array *p_array);

godot_error GDAPI godot_pool_real_array_insert(godot_pool_real_array *p_self, const godot_int p_idx, const godot_real p_data);

void GDAPI godot_pool_real_array_invert(godot_pool_real_array *p_self);

void GDAPI godot_pool_real_array_push_back(godot_pool_real_array *p_self, const godot_real p_data);

void GDAPI godot_pool_real_array_remove(godot_pool_real_array *p_self, const godot_int p_idx);

void GDAPI godot_pool_real_array_resize(godot_pool_real_array *p_self, const godot_int p_size);

godot_pool_real_array_read_access GDAPI *godot_pool_real_array_read(const godot_pool_real_array *p_self);

godot_pool_real_array_write_access GDAPI *godot_pool_real_array_write(godot_pool_real_array *p_self);

void GDAPI godot_pool_real_array_set(godot_pool_real_array *p_self, const godot_int p_idx, const godot_real p_data);
godot_real GDAPI godot_pool_real_array_get(const godot_pool_real_array *p_self, const godot_int p_idx);

godot_int GDAPI godot_pool_real_array_size(const godot_pool_real_array *p_self);

godot_bool GDAPI godot_pool_real_array_empty(const godot_pool_real_array *p_self);

void GDAPI godot_pool_real_array_destroy(godot_pool_real_array *p_self);



void GDAPI godot_pool_string_array_new(godot_pool_string_array *r_dest);
void GDAPI godot_pool_string_array_new_copy(godot_pool_string_array *r_dest, const godot_pool_string_array *p_src);
void GDAPI godot_pool_string_array_new_with_array(godot_pool_string_array *r_dest, const godot_array *p_a);

void GDAPI godot_pool_string_array_append(godot_pool_string_array *p_self, const godot_string *p_data);

void GDAPI godot_pool_string_array_append_array(godot_pool_string_array *p_self, const godot_pool_string_array *p_array);

godot_error GDAPI godot_pool_string_array_insert(godot_pool_string_array *p_self, const godot_int p_idx, const godot_string *p_data);

void GDAPI godot_pool_string_array_invert(godot_pool_string_array *p_self);

void GDAPI godot_pool_string_array_push_back(godot_pool_string_array *p_self, const godot_string *p_data);

void GDAPI godot_pool_string_array_remove(godot_pool_string_array *p_self, const godot_int p_idx);

void GDAPI godot_pool_string_array_resize(godot_pool_string_array *p_self, const godot_int p_size);

godot_pool_string_array_read_access GDAPI *godot_pool_string_array_read(const godot_pool_string_array *p_self);

godot_pool_string_array_write_access GDAPI *godot_pool_string_array_write(godot_pool_string_array *p_self);

void GDAPI godot_pool_string_array_set(godot_pool_string_array *p_self, const godot_int p_idx, const godot_string *p_data);
godot_string GDAPI godot_pool_string_array_get(const godot_pool_string_array *p_self, const godot_int p_idx);

godot_int GDAPI godot_pool_string_array_size(const godot_pool_string_array *p_self);

godot_bool GDAPI godot_pool_string_array_empty(const godot_pool_string_array *p_self);

void GDAPI godot_pool_string_array_destroy(godot_pool_string_array *p_self);



void GDAPI godot_pool_vector2_array_new(godot_pool_vector2_array *r_dest);
void GDAPI godot_pool_vector2_array_new_copy(godot_pool_vector2_array *r_dest, const godot_pool_vector2_array *p_src);
void GDAPI godot_pool_vector2_array_new_with_array(godot_pool_vector2_array *r_dest, const godot_array *p_a);

void GDAPI godot_pool_vector2_array_append(godot_pool_vector2_array *p_self, const godot_vector2 *p_data);

void GDAPI godot_pool_vector2_array_append_array(godot_pool_vector2_array *p_self, const godot_pool_vector2_array *p_array);

godot_error GDAPI godot_pool_vector2_array_insert(godot_pool_vector2_array *p_self, const godot_int p_idx, const godot_vector2 *p_data);

void GDAPI godot_pool_vector2_array_invert(godot_pool_vector2_array *p_self);

void GDAPI godot_pool_vector2_array_push_back(godot_pool_vector2_array *p_self, const godot_vector2 *p_data);

void GDAPI godot_pool_vector2_array_remove(godot_pool_vector2_array *p_self, const godot_int p_idx);

void GDAPI godot_pool_vector2_array_resize(godot_pool_vector2_array *p_self, const godot_int p_size);

godot_pool_vector2_array_read_access GDAPI *godot_pool_vector2_array_read(const godot_pool_vector2_array *p_self);

godot_pool_vector2_array_write_access GDAPI *godot_pool_vector2_array_write(godot_pool_vector2_array *p_self);

void GDAPI godot_pool_vector2_array_set(godot_pool_vector2_array *p_self, const godot_int p_idx, const godot_vector2 *p_data);
godot_vector2 GDAPI godot_pool_vector2_array_get(const godot_pool_vector2_array *p_self, const godot_int p_idx);

godot_int GDAPI godot_pool_vector2_array_size(const godot_pool_vector2_array *p_self);

godot_bool GDAPI godot_pool_vector2_array_empty(const godot_pool_vector2_array *p_self);

void GDAPI godot_pool_vector2_array_destroy(godot_pool_vector2_array *p_self);



void GDAPI godot_pool_vector3_array_new(godot_pool_vector3_array *r_dest);
void GDAPI godot_pool_vector3_array_new_copy(godot_pool_vector3_array *r_dest, const godot_pool_vector3_array *p_src);
void GDAPI godot_pool_vector3_array_new_with_array(godot_pool_vector3_array *r_dest, const godot_array *p_a);

void GDAPI godot_pool_vector3_array_append(godot_pool_vector3_array *p_self, const godot_vector3 *p_data);

void GDAPI godot_pool_vector3_array_append_array(godot_pool_vector3_array *p_self, const godot_pool_vector3_array *p_array);

godot_error GDAPI godot_pool_vector3_array_insert(godot_pool_vector3_array *p_self, const godot_int p_idx, const godot_vector3 *p_data);

void GDAPI godot_pool_vector3_array_invert(godot_pool_vector3_array *p_self);

void GDAPI godot_pool_vector3_array_push_back(godot_pool_vector3_array *p_self, const godot_vector3 *p_data);

void GDAPI godot_pool_vector3_array_remove(godot_pool_vector3_array *p_self, const godot_int p_idx);

void GDAPI godot_pool_vector3_array_resize(godot_pool_vector3_array *p_self, const godot_int p_size);

godot_pool_vector3_array_read_access GDAPI *godot_pool_vector3_array_read(const godot_pool_vector3_array *p_self);

godot_pool_vector3_array_write_access GDAPI *godot_pool_vector3_array_write(godot_pool_vector3_array *p_self);

void GDAPI godot_pool_vector3_array_set(godot_pool_vector3_array *p_self, const godot_int p_idx, const godot_vector3 *p_data);
godot_vector3 GDAPI godot_pool_vector3_array_get(const godot_pool_vector3_array *p_self, const godot_int p_idx);

godot_int GDAPI godot_pool_vector3_array_size(const godot_pool_vector3_array *p_self);

godot_bool GDAPI godot_pool_vector3_array_empty(const godot_pool_vector3_array *p_self);

void GDAPI godot_pool_vector3_array_destroy(godot_pool_vector3_array *p_self);



void GDAPI godot_pool_color_array_new(godot_pool_color_array *r_dest);
void GDAPI godot_pool_color_array_new_copy(godot_pool_color_array *r_dest, const godot_pool_color_array *p_src);
void GDAPI godot_pool_color_array_new_with_array(godot_pool_color_array *r_dest, const godot_array *p_a);

void GDAPI godot_pool_color_array_append(godot_pool_color_array *p_self, const godot_color *p_data);

void GDAPI godot_pool_color_array_append_array(godot_pool_color_array *p_self, const godot_pool_color_array *p_array);

godot_error GDAPI godot_pool_color_array_insert(godot_pool_color_array *p_self, const godot_int p_idx, const godot_color *p_data);

void GDAPI godot_pool_color_array_invert(godot_pool_color_array *p_self);

void GDAPI godot_pool_color_array_push_back(godot_pool_color_array *p_self, const godot_color *p_data);

void GDAPI godot_pool_color_array_remove(godot_pool_color_array *p_self, const godot_int p_idx);

void GDAPI godot_pool_color_array_resize(godot_pool_color_array *p_self, const godot_int p_size);

godot_pool_color_array_read_access GDAPI *godot_pool_color_array_read(const godot_pool_color_array *p_self);

godot_pool_color_array_write_access GDAPI *godot_pool_color_array_write(godot_pool_color_array *p_self);

void GDAPI godot_pool_color_array_set(godot_pool_color_array *p_self, const godot_int p_idx, const godot_color *p_data);
godot_color GDAPI godot_pool_color_array_get(const godot_pool_color_array *p_self, const godot_int p_idx);

godot_int GDAPI godot_pool_color_array_size(const godot_pool_color_array *p_self);

godot_bool GDAPI godot_pool_color_array_empty(const godot_pool_color_array *p_self);

void GDAPI godot_pool_color_array_destroy(godot_pool_color_array *p_self);





godot_pool_byte_array_read_access GDAPI *godot_pool_byte_array_read_access_copy(const godot_pool_byte_array_read_access *p_other);
const uint8_t GDAPI *godot_pool_byte_array_read_access_ptr(const godot_pool_byte_array_read_access *p_read);
void GDAPI godot_pool_byte_array_read_access_operator_assign(godot_pool_byte_array_read_access *p_read, godot_pool_byte_array_read_access *p_other);
void GDAPI godot_pool_byte_array_read_access_destroy(godot_pool_byte_array_read_access *p_read);

godot_pool_int_array_read_access GDAPI *godot_pool_int_array_read_access_copy(const godot_pool_int_array_read_access *p_other);
const godot_int GDAPI *godot_pool_int_array_read_access_ptr(const godot_pool_int_array_read_access *p_read);
void GDAPI godot_pool_int_array_read_access_operator_assign(godot_pool_int_array_read_access *p_read, godot_pool_int_array_read_access *p_other);
void GDAPI godot_pool_int_array_read_access_destroy(godot_pool_int_array_read_access *p_read);

godot_pool_real_array_read_access GDAPI *godot_pool_real_array_read_access_copy(const godot_pool_real_array_read_access *p_other);
const godot_real GDAPI *godot_pool_real_array_read_access_ptr(const godot_pool_real_array_read_access *p_read);
void GDAPI godot_pool_real_array_read_access_operator_assign(godot_pool_real_array_read_access *p_read, godot_pool_real_array_read_access *p_other);
void GDAPI godot_pool_real_array_read_access_destroy(godot_pool_real_array_read_access *p_read);

godot_pool_string_array_read_access GDAPI *godot_pool_string_array_read_access_copy(const godot_pool_string_array_read_access *p_other);
const godot_string GDAPI *godot_pool_string_array_read_access_ptr(const godot_pool_string_array_read_access *p_read);
void GDAPI godot_pool_string_array_read_access_operator_assign(godot_pool_string_array_read_access *p_read, godot_pool_string_array_read_access *p_other);
void GDAPI godot_pool_string_array_read_access_destroy(godot_pool_string_array_read_access *p_read);

godot_pool_vector2_array_read_access GDAPI *godot_pool_vector2_array_read_access_copy(const godot_pool_vector2_array_read_access *p_other);
const godot_vector2 GDAPI *godot_pool_vector2_array_read_access_ptr(const godot_pool_vector2_array_read_access *p_read);
void GDAPI godot_pool_vector2_array_read_access_operator_assign(godot_pool_vector2_array_read_access *p_read, godot_pool_vector2_array_read_access *p_other);
void GDAPI godot_pool_vector2_array_read_access_destroy(godot_pool_vector2_array_read_access *p_read);

godot_pool_vector3_array_read_access GDAPI *godot_pool_vector3_array_read_access_copy(const godot_pool_vector3_array_read_access *p_other);
const godot_vector3 GDAPI *godot_pool_vector3_array_read_access_ptr(const godot_pool_vector3_array_read_access *p_read);
void GDAPI godot_pool_vector3_array_read_access_operator_assign(godot_pool_vector3_array_read_access *p_read, godot_pool_vector3_array_read_access *p_other);
void GDAPI godot_pool_vector3_array_read_access_destroy(godot_pool_vector3_array_read_access *p_read);

godot_pool_color_array_read_access GDAPI *godot_pool_color_array_read_access_copy(const godot_pool_color_array_read_access *p_other);
const godot_color GDAPI *godot_pool_color_array_read_access_ptr(const godot_pool_color_array_read_access *p_read);
void GDAPI godot_pool_color_array_read_access_operator_assign(godot_pool_color_array_read_access *p_read, godot_pool_color_array_read_access *p_other);
void GDAPI godot_pool_color_array_read_access_destroy(godot_pool_color_array_read_access *p_read);





godot_pool_byte_array_write_access GDAPI *godot_pool_byte_array_write_access_copy(const godot_pool_byte_array_write_access *p_other);
uint8_t GDAPI *godot_pool_byte_array_write_access_ptr(const godot_pool_byte_array_write_access *p_write);
void GDAPI godot_pool_byte_array_write_access_operator_assign(godot_pool_byte_array_write_access *p_write, godot_pool_byte_array_write_access *p_other);
void GDAPI godot_pool_byte_array_write_access_destroy(godot_pool_byte_array_write_access *p_write);

godot_pool_int_array_write_access GDAPI *godot_pool_int_array_write_access_copy(const godot_pool_int_array_write_access *p_other);
godot_int GDAPI *godot_pool_int_array_write_access_ptr(const godot_pool_int_array_write_access *p_write);
void GDAPI godot_pool_int_array_write_access_operator_assign(godot_pool_int_array_write_access *p_write, godot_pool_int_array_write_access *p_other);
void GDAPI godot_pool_int_array_write_access_destroy(godot_pool_int_array_write_access *p_write);

godot_pool_real_array_write_access GDAPI *godot_pool_real_array_write_access_copy(const godot_pool_real_array_write_access *p_other);
godot_real GDAPI *godot_pool_real_array_write_access_ptr(const godot_pool_real_array_write_access *p_write);
void GDAPI godot_pool_real_array_write_access_operator_assign(godot_pool_real_array_write_access *p_write, godot_pool_real_array_write_access *p_other);
void GDAPI godot_pool_real_array_write_access_destroy(godot_pool_real_array_write_access *p_write);

godot_pool_string_array_write_access GDAPI *godot_pool_string_array_write_access_copy(const godot_pool_string_array_write_access *p_other);
godot_string GDAPI *godot_pool_string_array_write_access_ptr(const godot_pool_string_array_write_access *p_write);
void GDAPI godot_pool_string_array_write_access_operator_assign(godot_pool_string_array_write_access *p_write, godot_pool_string_array_write_access *p_other);
void GDAPI godot_pool_string_array_write_access_destroy(godot_pool_string_array_write_access *p_write);

godot_pool_vector2_array_write_access GDAPI *godot_pool_vector2_array_write_access_copy(const godot_pool_vector2_array_write_access *p_other);
godot_vector2 GDAPI *godot_pool_vector2_array_write_access_ptr(const godot_pool_vector2_array_write_access *p_write);
void GDAPI godot_pool_vector2_array_write_access_operator_assign(godot_pool_vector2_array_write_access *p_write, godot_pool_vector2_array_write_access *p_other);
void GDAPI godot_pool_vector2_array_write_access_destroy(godot_pool_vector2_array_write_access *p_write);

godot_pool_vector3_array_write_access GDAPI *godot_pool_vector3_array_write_access_copy(const godot_pool_vector3_array_write_access *p_other);
godot_vector3 GDAPI *godot_pool_vector3_array_write_access_ptr(const godot_pool_vector3_array_write_access *p_write);
void GDAPI godot_pool_vector3_array_write_access_operator_assign(godot_pool_vector3_array_write_access *p_write, godot_pool_vector3_array_write_access *p_other);
void GDAPI godot_pool_vector3_array_write_access_destroy(godot_pool_vector3_array_write_access *p_write);

godot_pool_color_array_write_access GDAPI *godot_pool_color_array_write_access_copy(const godot_pool_color_array_write_access *p_other);
godot_color GDAPI *godot_pool_color_array_write_access_ptr(const godot_pool_color_array_write_access *p_write);
void GDAPI godot_pool_color_array_write_access_operator_assign(godot_pool_color_array_write_access *p_write, godot_pool_color_array_write_access *p_other);
void GDAPI godot_pool_color_array_write_access_destroy(godot_pool_color_array_write_access *p_write);
