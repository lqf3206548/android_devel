package com.fengfeng.android_devel;

import androidx.annotation.NonNull;


import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;

/** AndroidDevelPlugin */
public class AndroidDevelPlugin implements FlutterPlugin, MethodCallHandler {
  /// The MethodChannel that will the communication between Flutter and native Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
  /// when the Flutter Engine is detached from the Activity
  private MethodChannel channel;
  EnvironmentProvider environmentProvider;
  PathProvider pathProvider;



  @Override
  public void onAttachedToEngine(@NonNull FlutterPluginBinding flutterPluginBinding) {
    channel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "android_devel");
    environmentProvider = new EnvironmentProvider(flutterPluginBinding.getApplicationContext());
    pathProvider = new PathProvider(flutterPluginBinding.getApplicationContext());
    channel.setMethodCallHandler(this);

  }

  @Override
  public void onMethodCall(@NonNull MethodCall call, @NonNull Result result) {
    if (call.method.equals("getAndroidId")){
      result.success(environmentProvider.getAndroidId());
    } else if (call.method.equals("getCpuAbi")){
      result.success(environmentProvider.getCpuAbi());
    } else if (call.method.equals("getAndroidSdkVersion")){
      result.success(environmentProvider.getAndroidSdkVersion());
    } else if (call.method.equals("getPackageName")){
      result.success(environmentProvider.getPackageName());
    } else if (call.method.equals("getOpPackageName")){
      result.success(environmentProvider.getOpPackageName());
    } else if (call.method.equals("getAttributionTag")){
      result.success(environmentProvider.getAttributionTag());
    }

    else if (call.method.equals("getPackageCodePath")){
      result.success(pathProvider.getPackageCodePath());
    }  else if (call.method.equals("getCodeCacheDirAbsolutePath")){
      result.success(pathProvider.getCodeCacheDirAbsolutePath());
    }  else if (call.method.equals("getCacheDirAbsolutePath")){
      result.success(pathProvider.getCacheDirAbsolutePath());
    }  else if (call.method.equals("getDataDirAbsolutePath")){
      result.success(pathProvider.getDataDirAbsolutePath());
    }  else if (call.method.equals("getPackageResourcePath")){
      result.success(pathProvider.getPackageResourcePath());
    }  else if (call.method.equals("getObbDirAbsolutePath")){
      result.success(pathProvider.getObbDirAbsolutePath());
    } else if (call.method.equals("getFilesDirAbsolutePath")){
      result.success(pathProvider.getFilesDirAbsolutePath());
    }else{
      result.notImplemented();
    }
  }

  @Override
  public void onDetachedFromEngine(@NonNull FlutterPluginBinding binding) {
    channel.setMethodCallHandler(null);
  }
}
