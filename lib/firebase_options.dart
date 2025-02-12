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
    apiKey: 'AIzaSyDjGLkvSp0e0I4oyZ9kcgiE8izQmiY0-Rw',
    appId: '1:220640491125:web:c39451b71733dcf30eea3c',
    messagingSenderId: '220640491125',
    projectId: 'lask-news-app',
    authDomain: 'lask-news-app.firebaseapp.com',
    storageBucket: 'lask-news-app.firebasestorage.app',
    measurementId: 'G-QKKNZC77RF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDBEIfrJeCUdw19E_nQq15cegMvKSNfLDU',
    appId: '1:220640491125:android:d6f48bc891d733e40eea3c',
    messagingSenderId: '220640491125',
    projectId: 'lask-news-app',
    storageBucket: 'lask-news-app.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA5JynV_kqX9aXu0wsvUgtnZ3bIeQaMOtQ',
    appId: '1:220640491125:ios:bd21ed978e9800e40eea3c',
    messagingSenderId: '220640491125',
    projectId: 'lask-news-app',
    storageBucket: 'lask-news-app.firebasestorage.app',
    iosBundleId: 'com.example.laskNewsApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA5JynV_kqX9aXu0wsvUgtnZ3bIeQaMOtQ',
    appId: '1:220640491125:ios:bd21ed978e9800e40eea3c',
    messagingSenderId: '220640491125',
    projectId: 'lask-news-app',
    storageBucket: 'lask-news-app.firebasestorage.app',
    iosBundleId: 'com.example.laskNewsApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDjGLkvSp0e0I4oyZ9kcgiE8izQmiY0-Rw',
    appId: '1:220640491125:web:cffa7de1624b7c130eea3c',
    messagingSenderId: '220640491125',
    projectId: 'lask-news-app',
    authDomain: 'lask-news-app.firebaseapp.com',
    storageBucket: 'lask-news-app.firebasestorage.app',
    measurementId: 'G-KW7YSY2WTZ',
  );
}
