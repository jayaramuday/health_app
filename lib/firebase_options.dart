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
    apiKey: 'AIzaSyBranHfHZDJxZscMGi8WvhW5ARJrXxQ5jI',
    appId: '1:44255868540:web:37bf3a89f87afe7c963bf9',
    messagingSenderId: '44255868540',
    projectId: 'healthapp-fbdd9',
    authDomain: 'healthapp-fbdd9.firebaseapp.com',
    storageBucket: 'healthapp-fbdd9.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDqurNapYx-xGhVfKLLp8aUlZTUJdnT7rE',
    appId: '1:44255868540:android:1bbb28d1bb4d648d963bf9',
    messagingSenderId: '44255868540',
    projectId: 'healthapp-fbdd9',
    storageBucket: 'healthapp-fbdd9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCh8cis1_5p9feaomy7wPZTGRroQ5d1TOo',
    appId: '1:44255868540:ios:2566d3966a345dde963bf9',
    messagingSenderId: '44255868540',
    projectId: 'healthapp-fbdd9',
    storageBucket: 'healthapp-fbdd9.appspot.com',
    iosBundleId: 'com.example.healthApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCh8cis1_5p9feaomy7wPZTGRroQ5d1TOo',
    appId: '1:44255868540:ios:2566d3966a345dde963bf9',
    messagingSenderId: '44255868540',
    projectId: 'healthapp-fbdd9',
    storageBucket: 'healthapp-fbdd9.appspot.com',
    iosBundleId: 'com.example.healthApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBranHfHZDJxZscMGi8WvhW5ARJrXxQ5jI',
    appId: '1:44255868540:web:6e46b6d7c9a822a0963bf9',
    messagingSenderId: '44255868540',
    projectId: 'healthapp-fbdd9',
    authDomain: 'healthapp-fbdd9.firebaseapp.com',
    storageBucket: 'healthapp-fbdd9.appspot.com',
  );
}
