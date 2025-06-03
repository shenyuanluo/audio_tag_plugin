import 'dart:ffi';
import 'dart:io';

final DynamicLibrary _nativeLib = Platform.isAndroid
    ? DynamicLibrary.open('libaudio_tag_plugin.so')
    : DynamicLibrary.process();

typedef MyClassCreateNative = Pointer<Void> Function();
typedef MyClassCreate = Pointer<Void> Function();

typedef MyClassDestroyNative = Void Function(Pointer<Void>);
typedef MyClassDestroy = void Function(Pointer<Void>);

typedef MyClassAddNative = Int32 Function(Pointer<Void>, Int32, Int32);
typedef MyClassAdd = int Function(Pointer<Void>, int, int);

class MyClassWrapper {
  late final Pointer<Void> _instance;
  static final MyClassCreate _create =
      _nativeLib.lookupFunction<MyClassCreateNative, MyClassCreate>('my_class_create');
  static final MyClassDestroy _destroy =
      _nativeLib.lookupFunction<MyClassDestroyNative, MyClassDestroy>('my_class_destroy');
  static final MyClassAdd _add =
      _nativeLib.lookupFunction<MyClassAddNative, MyClassAdd>('my_class_add');

  MyClassWrapper() {
    _instance = _create();
  }

  int add(int a, int b) {
    return _add(_instance, a, b);
  }

  void dispose() {
    _destroy(_instance);
  }
}