# agMobileApp
a mobile app for a coding project
Master contains all the source code and the commit history. Main serves as a spot for project metadata and output and such

In order to run this project, you will need to have Flutter and an emulator installed.
The two emulators I have tested this with are Android SDK built for x86, and AOSP  on IA Emulator
(devices specifically being a Pixel 4 API 29, and a Nexus 6 API 28)

I've also included the .aab file, since it seems to be used in generating the apk files necessary to run. I couldn't upload the apk files due to size.
These can be converted via the bundletool, more information found here: https://developer.android.com/studio/command-line/bundletool


Steps to run:
-clone master branch
-ensure emulator is running
-refresh/restart terminal
-navigate to cloned directory
-flutter run

this should launch lib/main.dart on your emulator.

You can also open and run this project inside of Android Studio.
