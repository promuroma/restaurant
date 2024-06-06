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
    apiKey: 'AIzaSyCJhBowAR0KjqO6z84x-y1RAotT4zJtYsg',
    appId: '1:558582250878:web:53aa1935d3a013c124872f',
    messagingSenderId: '558582250878',
    projectId: 'auth-d06dd',
    authDomain: 'auth-d06dd.firebaseapp.com',
    storageBucket: 'auth-d06dd.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCti6bTr0UyGtfCtd31_RL-SScEkMF71aA',
    appId: '1:558582250878:android:ec10b969af0e13c124872f',
    messagingSenderId: '558582250878',
    projectId: 'auth-d06dd',
    storageBucket: 'auth-d06dd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBeFwOFoSFMWywxz8WTjiZl8Kr8d1XxRG4',
    appId: '1:558582250878:ios:35d2ac566ea3717724872f',
    messagingSenderId: '558582250878',
    projectId: 'auth-d06dd',
    storageBucket: 'auth-d06dd.appspot.com',
    iosBundleId: 'com.example.restaurant',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBeFwOFoSFMWywxz8WTjiZl8Kr8d1XxRG4',
    appId: '1:558582250878:ios:35d2ac566ea3717724872f',
    messagingSenderId: '558582250878',
    projectId: 'auth-d06dd',
    storageBucket: 'auth-d06dd.appspot.com',
    iosBundleId: 'com.example.restaurant',
  );
}
