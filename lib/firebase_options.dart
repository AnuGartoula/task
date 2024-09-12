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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBY3lU0enl8hwwUrDznrD6plxpI7ZBZCac',
    appId: '1:211970030477:web:5522cd78359d211e29dbc4',
    messagingSenderId: '211970030477',
    projectId: 'tasker-fcb1c',
    authDomain: 'tasker-fcb1c.firebaseapp.com',
    storageBucket: 'tasker-fcb1c.appspot.com',
    measurementId: 'G-T5TKFBGCVE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC1ipTHUNXFzwxmrKo6902tDum3YASpa18',
    appId: '1:211970030477:android:33d80284ac52426529dbc4',
    messagingSenderId: '211970030477',
    projectId: 'tasker-fcb1c',
    storageBucket: 'tasker-fcb1c.appspot.com',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBY3lU0enl8hwwUrDznrD6plxpI7ZBZCac',
    appId: '1:211970030477:web:b48f6b8eeea331b129dbc4',
    messagingSenderId: '211970030477',
    projectId: 'tasker-fcb1c',
    authDomain: 'tasker-fcb1c.firebaseapp.com',
    storageBucket: 'tasker-fcb1c.appspot.com',
    measurementId: 'G-G9KHRJV3TL',
  );
}