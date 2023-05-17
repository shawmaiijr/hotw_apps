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
    apiKey: 'AIzaSyAMsRftvdN1bp2VIzzpKgE3W9WNE7scZO8',
    appId: '1:170807001833:web:0496613829d5ac3dd1a678',
    messagingSenderId: '170807001833',
    projectId: 'hotw-48b8d',
    authDomain: 'hotw-48b8d.firebaseapp.com',
    storageBucket: 'hotw-48b8d.appspot.com',
    measurementId: 'G-2T5S0W80KV',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBbQx_zhUh12cG0R6CV9ciy_yuFP5lRQx8',
    appId: '1:170807001833:android:7e091eff97bf9528d1a678',
    messagingSenderId: '170807001833',
    projectId: 'hotw-48b8d',
    storageBucket: 'hotw-48b8d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCzsbuo2A-eDbNZRTYDnpQ-ZF8EXIK0sk0',
    appId: '1:170807001833:ios:819fbb5a1528aacbd1a678',
    messagingSenderId: '170807001833',
    projectId: 'hotw-48b8d',
    storageBucket: 'hotw-48b8d.appspot.com',
    iosClientId: '170807001833-vls40j9dup6mqlbo4d04o8ktf9ssjl79.apps.googleusercontent.com',
    iosBundleId: 'com.example.hotwTest',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCzsbuo2A-eDbNZRTYDnpQ-ZF8EXIK0sk0',
    appId: '1:170807001833:ios:914f607b23524ff0d1a678',
    messagingSenderId: '170807001833',
    projectId: 'hotw-48b8d',
    storageBucket: 'hotw-48b8d.appspot.com',
    iosClientId: '170807001833-7de01q4pfqd99sn8ef3kjmj5c49in4i8.apps.googleusercontent.com',
    iosBundleId: 'com.example.hotwTest.RunnerTests',
  );
}