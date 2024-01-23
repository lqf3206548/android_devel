package com.fengfeng.android_devel;


import android.content.Context;
import android.os.Build;

class PathProvider {
    Context context;

    public PathProvider(Context context) {
        this.context = context;
    }

    public String getPackageCodePath() {
        return context.getPackageCodePath();
    }

    public String getPackageResourcePath() {
        return context.getPackageResourcePath();
    }

    public String getFilesDirAbsolutePath() {
        return context.getFilesDir().getAbsolutePath();
    }

    public String getCacheDirAbsolutePath() {
        return context.getCacheDir().getAbsolutePath();
    }

    public String getObbDirAbsolutePath() {
        return context.getObbDir().getAbsolutePath();
    }

    public String getCodeCacheDirAbsolutePath() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            return context.getCodeCacheDir().getAbsolutePath();
        }
        return null;
    }

    public String getDataDirAbsolutePath() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
            return context.getDataDir().getAbsolutePath();
        }
        return null;
    }


}