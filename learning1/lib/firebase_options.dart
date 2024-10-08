// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyA8DLw4T81Zr8C0NGeoFwk1w3VeCdvDerw',
    appId: '1:250871058962:web:406bc17f283c870f907ecb',
    messagingSenderId: '250871058962',
    projectId: 'tutorial-af003',
    authDomain: 'tutorial-af003.firebaseapp.com',
    storageBucket: 'tutorial-af003.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAUeqLI40kiJ1XxZeftzPZT23OX8ytwdfk',
    appId: '1:250871058962:android:bca6e07946e719cd907ecb',
    messagingSenderId: '250871058962',
    projectId: 'tutorial-af003',
    storageBucket: 'tutorial-af003.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBxEscZGgxlXyineFFcgtg24Cm1TmEQQRg',
    appId: '1:250871058962:ios:35fc5f7d00a3781a907ecb',
    messagingSenderId: '250871058962',
    projectId: 'tutorial-af003',
    storageBucket: 'tutorial-af003.appspot.com',
    iosBundleId: 'com.example.learning1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBxEscZGgxlXyineFFcgtg24Cm1TmEQQRg',
    appId: '1:250871058962:ios:35fc5f7d00a3781a907ecb',
    messagingSenderId: '250871058962',
    projectId: 'tutorial-af003',
    storageBucket: 'tutorial-af003.appspot.com',
    iosBundleId: 'com.example.learning1',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA8DLw4T81Zr8C0NGeoFwk1w3VeCdvDerw',
    appId: '1:250871058962:web:7d8af3c3a8f34c3d907ecb',
    messagingSenderId: '250871058962',
    projectId: 'tutorial-af003',
    authDomain: 'tutorial-af003.firebaseapp.com',
    storageBucket: 'tutorial-af003.appspot.com',
  );

}