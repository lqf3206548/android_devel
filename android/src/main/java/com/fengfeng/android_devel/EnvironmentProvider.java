package com.fengfeng.android_devel;

import android.content.Context;
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




}