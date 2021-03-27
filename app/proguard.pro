-dontobfuscate
-optimizationpasses 5
-dontwarn javax.annotation.**
-dontwarn sun.misc.Unsafe
-dontnote
-dontwarn okio.**

# rxJava
-keepclassmembers class rx.internal.util.unsafe.*ArrayQueue*Field* {
   long producerIndex;
   long consumerIndex;
}
-keepclassmembers class rx.internal.util.unsafe.BaseLinkedQueueProducerNodeRef {
    rx.internal.util.atomic.LinkedQueueNode producerNode;
}
-keepclassmembers class rx.internal.util.unsafe.BaseLinkedQueueConsumerNodeRef {
    rx.internal.util.atomic.LinkedQueueNode consumerNode;
}

-keep class com.arthenica.mobileffmpeg.Config {
    native <methods>;
    void log(long, int, byte[]);
    void statistics(long, int, float, float, long , int, double, double);
}

-keep class com.arthenica.mobileffmpeg.AbiDetect {
    native <methods>;
}

# picasso
-dontwarn com.squareup.picasso.OkHttpDownloader
-dontwarn okhttp3.internal.platform.*

# chapterreader
-dontwarn org.slf4j.**

# dagger
-dontwarn com.google.errorprone.annotations.*
