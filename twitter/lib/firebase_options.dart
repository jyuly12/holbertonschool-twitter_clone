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
    apiKey: 'AIzaSyD69Xcciti1LO9Q-gWQaKg3rH19B3R9xGg',
    appId: '1:295769129905:web:5fc3ff6f4b9b1761ae7390',
    messagingSenderId: '295769129905',
    projectId: 'twitter-92290',
    authDomain: 'twitter-92290.firebaseapp.com',
    storageBucket: 'twitter-92290.appspot.com',
    measurementId: 'G-22X8Q461Z8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDInGcVnglqiGzVf9dv9Xf9wowhkHDDYZQ',
    appId: '1:295769129905:android:0e873c734fcd2974ae7390',
    messagingSenderId: '295769129905',
    projectId: 'twitter-92290',
    storageBucket: 'twitter-92290.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB-xgztHSxtQLnRVTQPCW2syhXi6aChrow',
    appId: '1:295769129905:ios:f388ad47535d8046ae7390',
    messagingSenderId: '295769129905',
    projectId: 'twitter-92290',
    storageBucket: 'twitter-92290.appspot.com',
    iosClientId: '295769129905-a4hajc4hci0t1vu1a5p5dd65ss9fqe7l.apps.googleusercontent.com',
    iosBundleId: 'com.example.twitter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB-xgztHSxtQLnRVTQPCW2syhXi6aChrow',
    appId: '1:295769129905:ios:f388ad47535d8046ae7390',
    messagingSenderId: '295769129905',
    projectId: 'twitter-92290',
    storageBucket: 'twitter-92290.appspot.com',
    iosClientId: '295769129905-a4hajc4hci0t1vu1a5p5dd65ss9fqe7l.apps.googleusercontent.com',
    iosBundleId: 'com.example.twitter',
  );
}
