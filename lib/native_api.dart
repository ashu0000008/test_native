import 'dart:ffi';

import 'dart:io';

class NativeApi {
  static final DynamicLibrary nativeTestLib = Platform.isAndroid
      ? DynamicLibrary.open('libnative_test.so')
      : DynamicLibrary.process();

  static final int Function() incrementAndLoadCounter = nativeTestLib
      .lookup<NativeFunction<Int32 Function()>>("native_get_counter")
      .asFunction();
}