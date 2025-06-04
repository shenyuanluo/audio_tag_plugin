#ifndef MY_CLASS_H
#define MY_CLASS_H

#ifdef __cplusplus
extern "C" {
#endif

class MyClass {
public:
  MyClass();
  ~MyClass();
  int add(int a, int b);
};

#ifdef __cplusplus
}
#endif

#endif  // MY_CLASS_H
