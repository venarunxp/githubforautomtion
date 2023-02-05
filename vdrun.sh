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
avdmanager --verbose create avd --force --name "pixel_5_api30_google_atd_emulator" --package "system-images;android-30;google_atd;arm64-v8a" --tag "google_atd" --abi "arm64-v8a" --device "pixel_5"
exit 0
