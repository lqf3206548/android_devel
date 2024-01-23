
import 'android_devel_platform_interface.dart';

class AndroidDevel {

  static PathProvider pathProvider = PathProvider();
  static EnvironmentProvider environmentProvider = EnvironmentProvider();


}

class PathProvider{

  Future<String>getPackageCodePath() {
    return AndroidDevelPlatform.instance.getPackageCodePath();
  }

  Future<String> getPackageResourcePath() {
    return AndroidDevelPlatform.instance.getPackageResourcePath();
  }

  Future<String> getFilesDirAbsolutePath() {
    return AndroidDevelPlatform.instance.getFilesDirAbsolutePath();
  }

  Future<String> getCacheDirAbsolutePath() {
    return AndroidDevelPlatform.instance.getCacheDirAbsolutePath();
  }

  Future<String> getObbDirAbsolutePath() {
    return AndroidDevelPlatform.instance.getObbDirAbsolutePath();
  }

  Future<String?> getCodeCacheDirAbsolutePath() {

    return AndroidDevelPlatform.instance.getCodeCacheDirAbsolutePath();
  }

  Future<String?> getDataDirAbsolutePath() {

    return AndroidDevelPlatform.instance.getDataDirAbsolutePath();
  }

  PathProvider();
}
class EnvironmentProvider{

  Future<int> getAndroidSdkVersion() {
    return AndroidDevelPlatform.instance.getAndroidSdkVersion();
  }

  Future<String> getCpuAbi() {
    return AndroidDevelPlatform.instance.getCpuAbi();
  }
  Future<String> getAndroidId() {
    return AndroidDevelPlatform.instance.getAndroidId();
  }

  EnvironmentProvider();
}