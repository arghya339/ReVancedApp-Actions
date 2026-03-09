#!/bin/bash
# Revanced Extended for android 6 & 7 forked by arghya339 build
source src/build/utils.sh

# Download requirements
dl_gh "revanced-patches-android6-7 revanced-integrations" "arghya339" "latest"
dl_gh "revanced-cli" "kitadai31" "v3.1.4"
revanced_dl
# Patch YouTube Extended for android 6 & 7:
get_patches_key "youtube-rvx-6-7-arghya339"
version="17.34.36"
get_apk "com.google.android.youtube" "youtube" "youtube" "google-inc/youtube/youtube" "Bundle_extract"
split_editor "youtube" "youtube"
patch "youtube" "rvx-android-6-7-arghya339"
# Patch Youtube Arm64-v8a
get_patches_key "youtube-rvx-6-7-arghya339"
split_editor "youtube" "youtube-arm64-v8a" "exclude" "split_config.armeabi_v7a split_config.x86 split_config.x86_64"
patch "youtube-arm64-v8a" "rvx-android-6-7-arghya339"
# Patch Youtube Armeabi-v7a
get_patches_key "youtube-rvx-6-7-arghya339"
split_editor "youtube" "youtube-armeabi-v7a" "exclude" "split_config.arm64_v8a split_config.x86 split_config.x86_64"
patch "youtube-armeabi-v7a" "rvx-android-6-7-arghya339"
# Patch Youtube x86
get_patches_key "youtube-rvx-6-7-arghya339"
split_editor "youtube" "youtube-x86" "exclude" "split_config.arm64_v8a split_config.armeabi_v7a split_config.x86_64"
patch "youtube-x86" "rvx-android-6-7-arghya339"
# Patch Youtube x86_64
get_patches_key "youtube-rvx-6-7-arghya339"
split_editor "youtube" "youtube-x86_64" "exclude" "split_config.arm64_v8a split_config.armeabi_v7a split_config.x86"
patch "youtube-x86_64" "rvx-android-6-7-arghya339"