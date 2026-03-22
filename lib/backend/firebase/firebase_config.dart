import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAGIPPVoHiFGX_upMoXxXZV4GKsxoeOfgk",
            authDomain: "carteirade-vacinacao-207jtb.firebaseapp.com",
            projectId: "carteirade-vacinacao-207jtb",
            storageBucket: "carteirade-vacinacao-207jtb.firebasestorage.app",
            messagingSenderId: "1024480840904",
            appId: "1:1024480840904:web:3531c7010584f63b6629fd"));
  } else {
    await Firebase.initializeApp();
  }
}
