# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in E:\studio\sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
-keepclassmembers class fqcn.of.javascript.interface.for.webview {
   public *;
}

# Uncomment this to preserve the line number information for
# debugging stack traces.
-keepattributes SourceFile,LineNumberTable
#报错级别，容错率最高
-optimizationpasses 5
#过滤所有错误
#-ignorewarnings
-dontusemixedcaseclassnames
-dontskipnonpubliclibraryclasses
-dontpreverify
-dontoptimize
-verbose
-keepattributes Signature
-keepattributes *Annotation*
-keepattributes InnerClasses
#保留行号
-keepattributes SourceFile,LineNumberTable
-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*

# If you keep the line number information, uncomment this to
# hide the original source file name.
-renamesourcefileattribute SourceFile-dontwarn com.netease.**

#网易云信
-dontwarn io.netty.**
-keep class com.netease.** {*;}
 #如果 netty 使用的官方版本，它中间用到了反射，因此需要 keep。如果使用的是我们提供的版本，则不需要 keep
-keep class io.netty.** {*;}
#如果你使用全文检索插件，需要加入
-dontwarn org.apache.lucene.**
-keep class org.apache.lucene.** {*;}
