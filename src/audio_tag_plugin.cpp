#include "audio_tag_plugin.h"
#include "my_class.h"

// A very short-lived native function.
//
// For very short-lived functions, it is fine to call them on the main isolate.
// They will block the Dart execution while running the native function, so
// only do this for native functions which are guaranteed to be short-lived.
FFI_PLUGIN_EXPORT int sum_hh(int a, int b) { return a + b; }

// A longer-lived native function, which occupies the thread calling it.
//
// Do not call these kind of native functions in the main isolate. They will
// block Dart execution. This will cause dropped frames in Flutter applications.
// Instead, call these native functions on a separate isolate.
FFI_PLUGIN_EXPORT int sum_long_running(int a, int b) {
  // Simulate work.
#if _WIN32
  Sleep(5000);
#else
  usleep(5000 * 1000);
#endif
  return a + b;
}


FFI_PLUGIN_EXPORT void* my_class_create() {
  printf("Creating MyClass instance...\n");
  return new MyClass();
}

FFI_PLUGIN_EXPORT void my_class_destroy(void* instance) {
  printf("Destroying MyClass instance %p\n", instance);
  delete static_cast<MyClass*>(instance);
}

FFI_PLUGIN_EXPORT int my_class_add(void* instance, int a, int b) {
  printf("Adding %d and %d using MyClass instance %p\n", a, b, instance);
  MyClass* obj = static_cast<MyClass*>(instance);
  return obj->add(a, b);
}
