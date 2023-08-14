# QUOTLY :eye: :joystick:

[![GitHub CI](https://github.com/angeldollface/quotly.dart/actions/workflows/flutter.yml/badge.svg)](https://github.com/angeldollface/quotly.dart/actions)

***Inspiring quotes for you! :eye: :joystick:***

## ABOUT :books:

Since it is a good idea to slow down every now and again and contemplate many things, I thought I'd write an app that displays inspirational quotes. This repository contains the source for just such an app implemented in the Flutter framework! Enjoy. :heart_on_fire:

## DEPLOYED PROJECT ON GITHUB PAGES :rocket:

You can view the live, deployed project on GitHub Pages [here](https://angeldollface.art/quotly.dart).

## INSTALLATION :inbox_tray:

There are compiled binary executables for Android and Mac OSX in this repository's [Releases Section](https://github.com/angeldollface/quotly.dart/releases).

### Build from source

Make sure you have the following tools installed and available from the command line:

- [Flutter](https://flutter.dev)
- [Git](https://git-scm.org)
- For testing and rendering on the web: [Chrome](https://www.google.com/chrome/)
- For Android: [Android Studio](https://developer.android.com/studio) and [Java JDK](https://www.oracle.com/java/technologies/downloads/)
- For Mac OSX: [XCode](https://developer.apple.com/xcode/)


To get the source code, execute the following steps on the command line:

- 1.) Get the source code:

```bash
git clone https://github.com/angeldollface/quotly.dart.git
```

- 2.) Change directory into the source code's root directory:

```bash
cd quotly.dart
```

- 3a.) Build for a web target:

```bash
flutter build web --release
```

- 3b.) Build for Mac OSX:

```bash
flutter build macos --release
```

- 3c.) Build for Android by generating a Java Keystore and moving this to `android/app`. After this, add the alias and passwords to `android/app/key.properties`. Once these things are done, run the following command:

```bash
flutter build apk --release
```

- 4.) Run the generated bundle on the platform of your choice.

## CHANGELOG :black_nib:

### Version 1.0.0

- Upload to GitHub.
- Initial release.
- Deployment to GitHub Pages.

## NOTE :scroll:

- *Quotly.dart :eye: :joystick:* by Alexander Abraham :black_heart: a.k.a. *"Angel Dollface" :dolls: :ribbon:*
- Licensed under the MIT license.
