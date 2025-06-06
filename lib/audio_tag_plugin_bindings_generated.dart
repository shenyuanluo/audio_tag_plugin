// ignore_for_file: always_specify_types
// ignore_for_file: camel_case_types
// ignore_for_file: non_constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint
import 'dart:ffi' as ffi;

/// Bindings for `src/audio_tag_plugin.h`.
///
/// Regenerate bindings with `dart run ffigen --config ffigen.yaml`.
///
class AudioTagPluginBindings {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
  _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  AudioTagPluginBindings(ffi.DynamicLibrary dynamicLibrary)
    : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  AudioTagPluginBindings.fromLookup(
    ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName) lookup,
  ) : _lookup = lookup;

  /// A very short-lived native function.
  ///
  /// For very short-lived functions, it is fine to call them on the main isolate.
  /// They will block the Dart execution while running the native function, so
  /// only do this for native functions which are guaranteed to be short-lived.
  int sum_hh(int a, int b) {
    return _sum_hh(a, b);
  }

  late final _sum_hhPtr =
      _lookup<ffi.NativeFunction<ffi.Int Function(ffi.Int, ffi.Int)>>('sum_hh');
  late final _sum_hh = _sum_hhPtr.asFunction<int Function(int, int)>();

  /// A longer lived native function, which occupies the thread calling it.
  ///
  /// Do not call these kind of native functions in the main isolate. They will
  /// block Dart execution. This will cause dropped frames in Flutter applications.
  /// Instead, call these native functions on a separate isolate.
  int sum_long_running(int a, int b) {
    return _sum_long_running(a, b);
  }

  late final _sum_long_runningPtr =
      _lookup<ffi.NativeFunction<ffi.Int Function(ffi.Int, ffi.Int)>>(
        'sum_long_running',
      );
  late final _sum_long_running =
      _sum_long_runningPtr.asFunction<int Function(int, int)>();

  ffi.Pointer<ffi.Void> my_class_create() {
    return _my_class_create();
  }

  late final _my_class_createPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function()>>(
        'my_class_create',
      );
  late final _my_class_create =
      _my_class_createPtr.asFunction<ffi.Pointer<ffi.Void> Function()>();

  void my_class_destroy(ffi.Pointer<ffi.Void> instance) {
    return _my_class_destroy(instance);
  }

  late final _my_class_destroyPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'my_class_destroy',
      );
  late final _my_class_destroy =
      _my_class_destroyPtr.asFunction<void Function(ffi.Pointer<ffi.Void>)>();

  int my_class_add(ffi.Pointer<ffi.Void> instance, int a, int b) {
    return _my_class_add(instance, a, b);
  }

  late final _my_class_addPtr = _lookup<
    ffi.NativeFunction<
      ffi.Int Function(ffi.Pointer<ffi.Void>, ffi.Int, ffi.Int)
    >
  >('my_class_add');
  late final _my_class_add =
      _my_class_addPtr
          .asFunction<int Function(ffi.Pointer<ffi.Void>, int, int)>();
}
