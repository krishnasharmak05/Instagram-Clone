import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:insta/firebase_options.dart';
import 'package:insta/pages/home.dart';
import 'package:insta/secrets.dart'; // Unavailable on GitHub to prevent unauthorized access

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: apiKey,
        appId: appId,
        messagingSenderId: messagingSenderId,
        projectId: projectId,
        storageBucket: storageBucket,
      ), // Add your own API key from https://console.firebase.google.com before execution.
    );
  } else {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions
          .currentPlatform, // Set up your own firebase_option.dart file using flutterfire_cli for this line to work
    );
  }
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  runApp(const HomePage());
}
