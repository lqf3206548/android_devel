import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'android_devel_platform_interface.dart';

/// An implementation of [AndroidDevelPlatform] that uses method channels.
class MethodChannelAndroidDevel extends AndroidDevelPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('android_devel');

  @override
  Future<String> getPlatformVersion() async {
    final result =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    if (result == null) {
      throw "getPlatformVersion get null";
    }
    return result;
  }

  @override
  Future<String> getAndroidId() async {
    final result = await methodChannel.invokeMethod<String>('getAndroidId');
    if (result == null) {
      throw "getAndroidId get null";
    }
    return result;
  }

  @override
  Future<String> getCpuAbi() async {
    final result = await methodChannel.invokeMethod<String>('getCpuAbi');
    if (result == null) {
      throw "getCpuAbi get null";
    }

    return result;
  }

  @override
  Future<int> getAndroidSdkVersion() async {
    final result =
        await methodChannel.invokeMethod<int>('getAndroidSdkVersion');
    if (result == null) {
      throw "getAndroidSdkVersion get null";
    }

    return result;
  }

  @override
  Future<String?> getDataDirAbsolutePath() async {
    final result =
        await methodChannel.invokeMethod<String>('getDataDirAbsolutePath');
    if (result == null) {
      throw "getDataDirAbsolutePath get null";
    }

    return result;
  }

  @override
  Future<String?> getCodeCacheDirAbsolutePath() async {
    final result =
        await methodChannel.invokeMethod<String>('getCodeCacheDirAbsolutePath');
    if (result == null) {
      throw "getCodeCacheDirAbsolutePath get null";
    }

    return result;
  }

  @override
  Future<String> getObbDirAbsolutePath() async {
    final result =
        await methodChannel.invokeMethod<String>('getObbDirAbsolutePath');
    if (result == null) {
      throw "getObbDirAbsolutePath get null";
    }

    return result;
  }

  @override
  Future<String> getCacheDirAbsolutePath() async {
    final result =
        await methodChannel.invokeMethod<String>('getCacheDirAbsolutePath');
    if (result == null) {
      throw "getCacheDirAbsolutePath get null";
    }

    return result;
  }

  @override
  Future<String> getFilesDirAbsolutePath() async {
    final result =
        await methodChannel.invokeMethod<String>('getFilesDirAbsolutePath');
    if (result == null) {
      throw "getFilesDirAbsolutePath get null";
    }
    return result;
  }

  @override
  Future<String> getPackageResourcePath() async {
    final result =
        await methodChannel.invokeMethod<String>('getPackageResourcePath');
    if (result == null) {
      throw "getPackageResourcePath get null";
    }
    return result;
  }

  @override
  Future<String> getPackageCodePath() async {
    final result =
        await methodChannel.invokeMethod<String>('getPackageCodePath');
    if (result == null) {
      throw "getPackageCodePath get null";
    }
    return result;
  }

  @override
  Future<String> getPackageName() async {
    final result = await methodChannel.invokeMethod<String>('getPackageName');
    if (result == null) {
      throw "getPackageName get null";
    }
    return result;
  }

  @override
  Future<String?> getOpPackageName() async {
    final result = await methodChannel.invokeMethod<String>('getOpPackageName');
    return result;
  }

  @override
  Future<String?> getAttributionTag() async {
    final result =
        await methodChannel.invokeMethod<String>('getAttributionTag');
    return result;
  }
}
