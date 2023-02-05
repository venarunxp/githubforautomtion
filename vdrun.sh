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
brew install --cask caskroom/versions/java8
brew install --cask android-sdk
cd /usr/local/share/android-sdk/emulator/emulator
-ls l
adb devices
exit 0
