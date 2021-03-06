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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyD2afi2nIyVbbJRMJBKyQLcQHfB6fQIkEE',
    appId: '1:748668380725:web:8dcb10aca9a8cd03e8337c',
    messagingSenderId: '748668380725',
    projectId: 'agenda-k',
    authDomain: 'agenda-k.firebaseapp.com',
    storageBucket: 'agenda-k.appspot.com',
    measurementId: 'G-JDD3LQCM1D',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD_zEVUkXp3aYylSL8g_Wy6q6o5N9op1gI',
    appId: '1:748668380725:android:9064d56772b04c60e8337c',
    messagingSenderId: '748668380725',
    projectId: 'agenda-k',
    storageBucket: 'agenda-k.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD0EKy7Nh3IjptgkoKaJ1qN4YFfMLmJdeY',
    appId: '1:748668380725:ios:7d4024eaf3494d0ee8337c',
    messagingSenderId: '748668380725',
    projectId: 'agenda-k',
    storageBucket: 'agenda-k.appspot.com',
    iosClientId: '748668380725-feie8egj528qd547nd56euanqnfd1ok2.apps.googleusercontent.com',
    iosBundleId: 'br.com.lucas.projetos2NoiteMenu',
  );
}
