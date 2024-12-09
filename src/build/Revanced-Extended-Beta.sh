#!/bin/bash
# Revanced Extended build
source src/build/utils.sh

# Download requirements
revanced_dl(){
	dl_gh "revanced-patches revanced-cli" "inotia00" "prerelease"
}

1() {
	revanced_dl
	# Patch YouTube:
	get_patches_key "youtube-revanced-extended"
	get_apk "com.google.android.youtube" "youtube-beta" "youtube" "google-inc/youtube/youtube" "Bundle_extract"
	split_editor "youtube-beta" "youtube-beta"
	patch "youtube-beta" "revanced-extended" "inotia"
	# Patch Youtube Arm64-v8a
	get_patches_key "youtube-revanced-extended"
	split_editor "youtube-beta" "youtube-beta-arm64-v8a" "exclude" "split_config.armeabi_v7a split_config.x86 split_config.x86_64"
	patch "youtube-beta-arm64-v8a" "revanced-extended" "inotia"
	# Patch Youtube Armeabi-v7a
	get_patches_key "youtube-revanced-extended"
	split_editor "youtube-beta" "youtube-beta-armeabi-v7a" "exclude" "split_config.arm64_v8a split_config.x86 split_config.x86_64"
	patch "youtube-beta-armeabi-v7a" "revanced-extended" "inotia"
	# Patch Youtube x86
	get_patches_key "youtube-revanced-extended"
	split_editor "youtube-beta" "youtube-beta-x86" "exclude" "split_config.arm64_v8a split_config.armeabi_v7a split_config.x86_64"
	patch "youtube-beta-x86" "revanced-extended" "inotia"
	# Patch Youtube x86_64
	get_patches_key "youtube-revanced-extended"
	split_editor "youtube-beta" "youtube-beta-x86_64" "exclude" "split_config.arm64_v8a split_config.armeabi_v7a split_config.x86"
	patch "youtube-beta-x86_64" "revanced-extended" "inotia"
}
2() {
	revanced_dl
	# Patch YouTube Music Extended:
	# Arm64-v8a
	get_patches_key "youtube-music-revanced-extended"
	get_apk "com.google.android.apps.youtube.music" "youtube-music-beta-arm64-v8a" "youtube-music" "google-inc/youtube-music/youtube-music" "arm64-v8a"
	patch "youtube-music-beta-arm64-v8a" "revanced-extended" "inotia"
	# Armeabi-v7a
	get_patches_key "youtube-music-revanced-extended"
	get_apk "com.google.android.apps.youtube.music" "youtube-music-beta-armeabi-v7a" "youtube-music" "google-inc/youtube-music/youtube-music" "armeabi-v7a"
	patch "youtube-music-beta-armeabi-v7a" "revanced-extended" "inotia"
	# x86
	get_patches_key "youtube-music-revanced-extended"
	get_apk "com.google.android.apps.youtube.music" "youtube-music-beta-x86" "youtube-music" "google-inc/youtube-music/youtube-music" "x86"
	patch "youtube-music-beta-x86" "revanced-extended" "inotia"
	# x86_64
	get_patches_key "youtube-music-revanced-extended"
	get_apk "com.google.android.apps.youtube.music" "youtube-music-beta-x86_64" "youtube-music" "google-inc/youtube-music/youtube-music" "x86_64"
	patch "youtube-music-beta-x86_64" "revanced-extended" "inotia"
}
3() {
	revanced_dl
	get_apk "com.google.android.youtube" "youtube-lite-beta" "youtube" "google-inc/youtube/youtube" "Bundle_extract"
	# Patch YouTube Lite Arm64-v8a:
	get_patches_key "youtube-revanced-extended"
	split_editor "youtube-lite-beta" "youtube-lite-beta-arm64-v8a" "include" "split_config.arm64_v8a split_config.en split_config.xhdpi split_config.xxxhdpi"
	patch "youtube-lite-beta-arm64-v8a" "revanced-extended" "inotia"
	# Patch YouTube Lite Armeabi-v7a:
	get_patches_key "youtube-revanced-extended"
	split_editor "youtube-lite-beta" "youtube-lite-beta-armeabi-v7a" "include" "split_config.armeabi_v7a split_config.en split_config.xhdpi split_config.xxxhdpi"
	patch "youtube-lite-beta-armeabi-v7a" "revanced-extended" "inotia"
}
4() {
	revanced_dl
	# Patch YouTube Music Extended for android 7:
	# Arm64-v8a
	get_patches_key "youtube-music-revanced-extended"
	version="6.42.55"
	get_apk "com.google.android.apps.youtube.music" "youtube-music-beta-android-7-arm64-v8a" "youtube-music" "google-inc/youtube-music/youtube-music" "arm64-v8a"
	patch "youtube-music-beta-android-7-arm64-v8a" "revanced-extended" "inotia"
	# Armeabi-v7a
	get_patches_key "youtube-music-revanced-extended"
	version="6.42.55"
	get_apk "com.google.android.apps.youtube.music" "youtube-music-beta-android-7-armeabi-v7a" "youtube-music" "google-inc/youtube-music/youtube-music" "armeabi-v7a"
	patch "youtube-music-beta-android-7-armeabi-v7a" "revanced-extended" "inotia"
	# x86
	get_patches_key "youtube-music-revanced-extended"
	version="6.42.52"
	get_apk "com.google.android.apps.youtube.music" "youtube-music-beta-android-7-x86" "youtube-music" "google-inc/youtube-music/youtube-music" "x86"
	patch "youtube-music-beta-android-7-x86" "revanced-extended" "inotia"
	# x86_64
	get_patches_key "youtube-music-revanced-extended"
	version="6.42.52"
	get_apk "com.google.android.apps.youtube.music" "youtube-music-beta-android-7-x86_64" "youtube-music" "google-inc/youtube-music/youtube-music" "x86_64"
	patch "youtube-music-beta-android-7-x86_64" "revanced-extended" "inotia"
}
5() {
	revanced_dl
	# Patch YouTube Music Extended for android 5 & 6:
	# Arm64-v8a
	get_patches_key "youtube-music-revanced-extended"
	version="6.20.51"
	get_apk "com.google.android.apps.youtube.music" "youtube-music-beta-android-5-6-arm64-v8a" "youtube-music" "google-inc/youtube-music/youtube-music" "arm64-v8a"
	patch "youtube-music-beta-android-5-6-arm64-v8a" "revanced-extended" "inotia"
	# Armeabi-v7a
	get_patches_key "youtube-music-revanced-extended"
	version="6.20.51"
	get_apk "com.google.android.apps.youtube.music" "youtube-music-beta-android-5-6-armeabi-v7a" "youtube-music" "google-inc/youtube-music/youtube-music" "armeabi-v7a"
	patch "youtube-music-beta-android-5-6-armeabi-v7a" "revanced-extended" "inotia"
	# x86
	get_patches_key "youtube-music-revanced-extended"
	version="6.20.51"
	get_apk "com.google.android.apps.youtube.music" "youtube-music-beta-android-5-6-x86" "youtube-music" "google-inc/youtube-music/youtube-music" "x86"
	patch "youtube-music-beta-android-5-6-x86" "revanced-extended" "inotia"
	# x86_64
	get_patches_key "youtube-music-revanced-extended"
	version="6.20.51"
	get_apk "com.google.android.apps.youtube.music" "youtube-music-beta-android-5-6-x86_64" "youtube-music" "google-inc/youtube-music/youtube-music" "x86_64"
	patch "youtube-music-beta-android-5-6-x86_64" "revanced-extended" "inotia"
}
case "$1" in
    1)
        1
        ;;
    2)
        2
        ;;
    3)
        3
        ;;
    4)
        4
        ;;
    5)
        5
        ;;
esac