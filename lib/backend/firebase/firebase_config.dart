import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBr-HBUpQMSaJE0n8kwtmY60_M3-jsUP4Q",
            authDomain: "questionbank-47b3e.firebaseapp.com",
            projectId: "questionbank-47b3e",
            storageBucket: "questionbank-47b3e.appspot.com",
            messagingSenderId: "1093777612601",
            appId: "1:1093777612601:web:7d8d41f1860e054dd812e8",
            measurementId: "G-JKT1Z4TJXE"));
  } else {
    await Firebase.initializeApp();
  }
}
