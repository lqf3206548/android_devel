// import 'package:flutter_test/flutter_test.dart';
// import 'package:android_devel/android_devel.dart';
// import 'package:android_devel/android_devel_platform_interface.dart';
// import 'package:android_devel/android_devel_method_channel.dart';
// import 'package:plugin_platform_interface/plugin_platform_interface.dart';
//
// class MockAndroidDevelPlatform
//     with MockPlatformInterfaceMixin
//     implements AndroidDevelPlatform {
//
//   @override
//   Future<String?> getPlatformVersion() => Future.value('42');
// }
//
// void main() {
//   final AndroidDevelPlatform initialPlatform = AndroidDevelPlatform.instance;
//
//   test('$MethodChannelAndroidDevel is the default instance', () {
//     expect(initialPlatform, isInstanceOf<MethodChannelAndroidDevel>());
//   });
//
//   test('getPlatformVersion', () async {
//     AndroidDevel androidDevelPlugin = AndroidDevel();
//     MockAndroidDevelPlatform fakePlatform = MockAndroidDevelPlatform();
//     AndroidDevelPlatform.instance = fakePlatform;
//
//     expect(await androidDevelPlugin.getPlatformVersion(), '42');
//   });
// }
