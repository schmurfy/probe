
#include "mruby.h"
#include "mruby/proc.h"
#include "mruby/class.h"
// #include "mruby/array.h"
#include "mruby/string.h"
#include "mruby/compile.h"
#include "mruby/dump.h"
#include "mruby/variable.h"
#include <stdio.h>
#include <unistd.h>
// #include <stdlib.h>
// #include <string.h>

#include <pthread.h>
#include <sys/socket.h>

#define C_CHECK(MSG, what) if(what == -1){ perror(MSG);  return -1; }


#define RUBY_ERR(MSG) { mrb_raise(mrb, E_RUNTIME_ERROR, MSG); return self; }
#define RIBY_ERRF(MSG, FORMAT, ARGS...) { mrb_raisef(mrb, E_RUNTIME_ERROR, FORMAT, ## ARGS); return self; }



// run aruby code (exec.c)
int execute_compiled_file(mrb_state *mrb, const char *path);
int execute_file(mrb_state *mrb, const char *path);
int execute_string(mrb_state *mrb, const char *code);


// api setup
void setup_api(mrb_state *mrb);



typedef struct {
  mrb_value p;
  mrb_state *mrb;
  mrb_value plugin_pipe;
  int       host_pipe;
  // int       pipe[2];  // 0 = main
                      // 1 = thread
  pthread_t thread;
} Plugin;
