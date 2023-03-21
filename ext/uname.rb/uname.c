#include <ruby.h>
#include <sys/utsname.h>
#include <errno.h>

static VALUE
rb_uname(VALUE self)
{
  struct utsname name;
  VALUE cUNIXName;
  int result, err;

  result = uname(&name);
  if (result == 0) {
    cUNIXName = rb_const_get(rb_cObject, rb_intern("UNIXName"));
    return rb_funcall(
      cUNIXName, rb_intern("new"), 5,
      rb_str_new_cstr(name.sysname), rb_str_new_cstr(name.nodename),
      rb_str_new_cstr(name.release), rb_str_new_cstr(name.version),
      rb_str_new_cstr(name.machine)
    );
  } else {
    err = errno;
    errno = 0;
    rb_syserr_fail(err, "uname");
  }
}

void
Init_uname(void)
{
  rb_define_module_function(rb_mKernel, "uname", rb_uname, 0);
}
