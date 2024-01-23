import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:android_devel/android_devel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Future<void> initPlatformState() async {
    // is android call
    AndroidDevel.environmentProvider.getAndroidId();
    AndroidDevel.environmentProvider.getAndroidSdkVersion();
    AndroidDevel.environmentProvider.getCpuAbi();

    AndroidDevel.pathProvider.getPackageCodePath();
    AndroidDevel.pathProvider.getCacheDirAbsolutePath();
    AndroidDevel.pathProvider.getCodeCacheDirAbsolutePath();
    AndroidDevel.pathProvider.getDataDirAbsolutePath();
    AndroidDevel.pathProvider.getFilesDirAbsolutePath();
    AndroidDevel.pathProvider.getObbDirAbsolutePath();
    AndroidDevel.pathProvider.getPackageResourcePath();

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: const Center(
          child: Text('Running on'),
        ),
      ),
    );
  }
}
