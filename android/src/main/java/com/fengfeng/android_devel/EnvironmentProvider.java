package com.fengfeng.android_devel;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.provider.Settings;

class EnvironmentProvider {
    Context context;

    public EnvironmentProvider(Context context) {
        this.context = context;
    }

    int getAndroidSdkVersion() {
        return Build.VERSION.SDK_INT;
    }

    String getCpuAbi() {
        return Build.CPU_ABI;
    }

    String getAndroidId() {
        return Settings.Secure.getString(context.getContentResolver(), Settings.Secure.ANDROID_ID);
    }
    String getPackageName(){
        return context.getPackageName();
    }

    String getOpPackageName(){
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
            return context.getOpPackageName();
        }
        return null;
    }
    String getAttributionTag(){
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            return context.getAttributionTag();
        }
        return null;
    }






}