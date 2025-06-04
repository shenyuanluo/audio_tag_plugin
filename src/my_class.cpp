#include "my_class.h"

#ifdef __cplusplus
extern "C" {
#endif
MyClass::MyClass() {}

MyClass::~MyClass() {}

int MyClass::add(int a, int b) {
  return a + b + 100;
}

#ifdef __cplusplus
}
#endif