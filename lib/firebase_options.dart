// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAiKS_DtBKYMABn0A-HQySIx0fzodT_-n4',
    appId: '1:111422936116:web:a6797fb167a4b542446661',
    messagingSenderId: '111422936116',
    projectId: 'todoey-7f523',
    authDomain: 'todoey-7f523.firebaseapp.com',
    storageBucket: 'todoey-7f523.appspot.com',
    measurementId: 'G-S90KXZTXQY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDuys5GSxuiRbYFJR-mbYulovpGBwq0r3k',
    appId: '1:111422936116:android:de55e9a8708283ff446661',
    messagingSenderId: '111422936116',
    projectId: 'todoey-7f523',
    storageBucket: 'todoey-7f523.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCf8-NKARf89d3Ia4iXDxlD9SPSN7KWT5c',
    appId: '1:111422936116:ios:f438477e216787cd446661',
    messagingSenderId: '111422936116',
    projectId: 'todoey-7f523',
    storageBucket: 'todoey-7f523.appspot.com',
    iosBundleId: 'com.example.todoey',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCf8-NKARf89d3Ia4iXDxlD9SPSN7KWT5c',
    appId: '1:111422936116:ios:9e96027b09bca224446661',
    messagingSenderId: '111422936116',
    projectId: 'todoey-7f523',
    storageBucket: 'todoey-7f523.appspot.com',
    iosBundleId: 'com.example.todoey.RunnerTests',
  );
}