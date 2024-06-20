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
    apiKey: 'AIzaSyD1fdGhUXIl63O1P4qBan0gQsGHE5NIqIU',
    appId: '1:682634234655:web:090f384186941ff1e6fe2a',
    messagingSenderId: '682634234655',
    projectId: 'ecommerce-93756',
    authDomain: 'ecommerce-93756.firebaseapp.com',
    storageBucket: 'ecommerce-93756.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDI608WvJgFKAq0Lxql4QGUxtxJ0zf1J74',
    appId: '1:682634234655:android:d166ec30f6727926e6fe2a',
    messagingSenderId: '682634234655',
    projectId: 'ecommerce-93756',
    storageBucket: 'ecommerce-93756.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBfn2R3P59uwC_Q2q-ccV3tzr8mb5h5hzw',
    appId: '1:682634234655:ios:e732917294ce657de6fe2a',
    messagingSenderId: '682634234655',
    projectId: 'ecommerce-93756',
    storageBucket: 'ecommerce-93756.appspot.com',
    iosBundleId: 'com.example.ecommerce',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD1fdGhUXIl63O1P4qBan0gQsGHE5NIqIU',
    appId: '1:682634234655:web:168fb8ada013e6a9e6fe2a',
    messagingSenderId: '682634234655',
    projectId: 'ecommerce-93756',
    authDomain: 'ecommerce-93756.firebaseapp.com',
    storageBucket: 'ecommerce-93756.appspot.com',
  );
}
