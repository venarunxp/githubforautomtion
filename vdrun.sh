#!/bin/sh
# List of AVDs:
# $ emulator -list-avds
# Start the emulator without SELinux:
# $ emulator -avd Android_API_29 -selinux permissive
# Related links:
# https://download.chainfire.eu/supersu/
# http://4pda.ru/forum/index.php?showtopic=318487
mkdir run
cd run
brew install --cask android-commandlinetools
brew install --cask android-sdk
export ANDROID_SDK_ROOT="/usr/local/share/android-sdk"
avdmanager --verbose create avd --force --name "pixel_5_api30_google_atd_emulator" --package "system-images;android-30;google_atd;arm64-v8a" --tag "google_atd" --abi "arm64-v8a" --device "pixel_5"avdmanager --verbose create avd --force --name "generic_api30_aosp_atd_emulator" --package "system-images;android-30;aosp_atd;x86" --tag "aosp_atd" --abi "x86"
avdmanager create avd -n test -k "system-images;android-30;google_atd;arm64-v8a"
/usr/local/share/android-sdk/tools/emulator -avd test
adb devices
exit 0
