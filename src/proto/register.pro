/* register.c */
yankreg_T *get_y_regs(void);
yankreg_T *get_y_current(void);
yankreg_T *get_y_previous(void);
void set_y_previous(yankreg_T *yreg);
int get_expr_register(void);
void set_expr_line(char_u *new_line);
char_u *get_expr_line(void);
int valid_yank_reg(int regname, int writing);
int get_yank_register(int regname, int writing);
int may_get_selection(int regname);
void *get_register(int name, int copy);
void put_register(int name, void *reg);
void free_register(void *reg);
int yank_register_mline(int regname);
int do_record(int c);
int get_execreg_lastc(void);
void set_execreg_lastc(int lastc);
int do_execreg(int regname, int colon, int addcr, int silent);
int insert_reg(int regname, int literally_arg);
int get_spec_reg(int regname, char_u **argp, int *allocated, int errmsg);
int cmdline_paste_reg(int regname, int literally_arg, int remcr);
void adjust_clip_reg(int *rp);
void shift_delete_registers(void);
void yank_do_autocmd(oparg_T *oap, yankreg_T *reg);
void init_yank(void);
void clear_registers(void);
int op_yank(oparg_T *oap, int deleting, int mess);
void do_put(int regname, int dir, long count, int flags);
int get_register_name(int num);
void ex_display(exarg_T *eap);
void clip_free_selection(Clipboard_T *cbd);
void clip_get_selection(Clipboard_T *cbd);
void clip_yank_selection(int type, char_u *str, long len, Clipboard_T *cbd);
int clip_convert_selection(char_u **str, long_u *len, Clipboard_T *cbd);
void dnd_yank_drag_data(char_u *str, long len);
char_u get_reg_type(int regname, long *reglen);
char_u *get_reg_contents(int regname, int flags);
void write_reg_contents(int name, char_u *str, int maxlen, int must_append);
void write_reg_contents_lst(int name, char_u **strings, int maxlen, int must_append, int yank_type, long block_len);
void write_reg_contents_ex(int name, char_u *str, int maxlen, int must_append, int yank_type, long block_len);
/* vim: set ft=c : */
