#ifndef AUDIO_TAG_PLUGIN_H
#define AUDIO_TAG_PLUGIN_H

#ifdef __cplusplus
extern "C" {
#endif

// 用于 Dart FFI 层调用的 C 接口
void* my_class_create();
void my_class_destroy(void* instance);
int my_class_add(void* instance, int a, int b);

#ifdef __cplusplus
}
#endif

#endif  // AUDIO_TAG_PLUGIN_H
