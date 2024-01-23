import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'android_devel_method_channel.dart';

abstract class AndroidDevelPlatform extends PlatformInterface {
  /// Constructs a AndroidDevelPlatform.
  AndroidDevelPlatform() : super(token: _token);

  static final Object _token = Object();

  static AndroidDevelPlatform _instance = MethodChannelAndroidDevel();

  /// The default instance of [AndroidDevelPlatform] to use.
  ///
  /// Defaults to [MethodChannelAndroidDevel].
  static AndroidDevelPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AndroidDevelPlatform] when
  /// they register themselves.
  static set instance(AndroidDevelPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String> getPackageCodePath() {
    throw UnimplementedError('getPackageCodePath() has not been implemented.');
  }

  Future<String> getPackageResourcePath() {
    throw UnimplementedError(
        'getPackageResourcePath() has not been implemented.');
  }

  Future<String> getFilesDirAbsolutePath() {
    throw UnimplementedError(
        'getFilesDirAbsolutePath() has not been implemented.');
  }

  Future<String> getCacheDirAbsolutePath() {
    throw UnimplementedError(
        'getCacheDirAbsolutePath() has not been implemented.');
  }

  Future<String> getObbDirAbsolutePath() {
    throw UnimplementedError(
        'getObbDirAbsolutePath() has not been implemented.');
  }

  Future<String?> getCodeCacheDirAbsolutePath() {
    throw UnimplementedError(
        'getgetCodeCacheDirAbsolutePath() has not been implemented.');
  }

  Future<String?> getDataDirAbsolutePath() {
    throw UnimplementedError(
        'getDataDirAbsolutePath() has not been implemented.');
  }

  Future<int> getAndroidSdkVersion() {
    throw UnimplementedError(
        'getAndroidSdkVersion() has not been implemented.');
  }

  Future<String> getCpuAbi() {
    throw UnimplementedError('getCpuAbi() has not been implemented.');
  }

  Future<String> getAndroidId() {
    throw UnimplementedError('getAndroidId() has not been implemented.');
  }

  Future<String> getPackageName() {
    throw UnimplementedError('getPackageName() has not been implemented.');
  }

  Future<String?> getOpPackageName() {
    throw UnimplementedError('getOpPackageName() has not been implemented.');
  }

  Future<String?> getAttributionTag() {
    throw UnimplementedError('getAttributionTag() has not been implemented.');
  }
}
