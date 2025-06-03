#include "audio_tag_plugin.h"
#include "my_class.h"

void* my_class_create() {
  return new MyClass();
}

void my_class_destroy(void* instance) {
  delete static_cast<MyClass*>(instance);
}

int my_class_add(void* instance, int a, int b) {
  MyClass* obj = static_cast<MyClass*>(instance);
  return obj->add(a, b);
}
