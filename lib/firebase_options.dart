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
    apiKey: 'AIzaSyC1SUfEWTSJ5Pil0RxLSFZM2II9ztybTBA',
    appId: '1:730525670370:web:f7c97594cd465eca11b7bb',
    messagingSenderId: '730525670370',
    projectId: 'placement-kce',
    authDomain: 'placement-kce.firebaseapp.com',
    databaseURL: 'https://placement-kce-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'placement-kce.appspot.com',
    measurementId: 'G-HL3XWDZPFN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB3fOF6c69CcpXO_UC5SVh_NEV35pfdgq4',
    appId: '1:730525670370:android:8254d1d392df2ad211b7bb',
    messagingSenderId: '730525670370',
    projectId: 'placement-kce',
    databaseURL: 'https://placement-kce-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'placement-kce.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAnHHNEo99H4FYnE0YUVyhUdJ68OdK48DI',
    appId: '1:730525670370:ios:121dd3cd3949021211b7bb',
    messagingSenderId: '730525670370',
    projectId: 'placement-kce',
    databaseURL: 'https://placement-kce-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'placement-kce.appspot.com',
    iosBundleId: 'com.example.demoApllication',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAnHHNEo99H4FYnE0YUVyhUdJ68OdK48DI',
    appId: '1:730525670370:ios:47d00ff49c754ad411b7bb',
    messagingSenderId: '730525670370',
    projectId: 'placement-kce',
    databaseURL: 'https://placement-kce-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'placement-kce.appspot.com',
    iosBundleId: 'com.example.demoApllication.RunnerTests',
  );
}
