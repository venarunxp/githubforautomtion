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
brew install --cask android-sdk
sdkmanager --install "system-images;android-30;aosp_atd;arm64-v8a"
exit 0
