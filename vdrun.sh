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
export ANDROID_SDK_ROOT="/usr/local/share/android-sdk"
avdmanager create avd -n test -k "system-images;android-30;google_atd;arm64-v8a"
/usr/local/share/android-sdk/emulator/emulator -avd test
adb devices
exit 0
