#!/bin/bash
# YT Music Revanced Extended Android 7 build
source src/build/utils.sh

# Download requirements
	dl_gh "revanced-patches revanced-cli" "inotia00" "latest"
    
    # Patch YouTube Music Extended for android 7:
	# Arm64-v8a
	get_patches_key "youtube-music-revanced-extended"
	version="6.42.55"
	get_apk "com.google.android.apps.youtube.music" "youtube-music-android-7-arm64-v8a" "youtube-music" "google-inc/youtube-music/youtube-music" "arm64-v8a"
	patch "youtube-music-android-7-arm64-v8a" "revanced-extended" "inotia"
	# Armeabi-v7a
	get_patches_key "youtube-music-revanced-extended"
	version="6.42.55"
	get_apk "com.google.android.apps.youtube.music" "youtube-music-android-7-armeabi-v7a" "youtube-music" "google-inc/youtube-music/youtube-music" "armeabi-v7a"
	patch "youtube-music-android-7-armeabi-v7a" "revanced-extended" "inotia"
    # x86
    get_patches_key "youtube-music-revanced-extended"
    version="6.42.55"
    get_apk "com.google.android.apps.youtube.music" "youtube-music-android-7-x86" "youtube-music" "google-inc/youtube-music/youtube-music" "x86"
    patch "youtube-music-android-7-x86" "revanced-extended" "inotia"
    # x86_64
    get_patches_key "youtube-music-revanced-extended"
    version="6.42.55"
    get_apk "com.google.android.apps.youtube.music" "youtube-music-android-7-x86_64" "youtube-music" "google-inc/youtube-music/youtube-music" "x86_64"
    patch "youtube-music-android-7-x86_64" "revanced-extended" "inotia"