import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB2kyqYhNsJwsBjZ3s8pYeapsYt4lqK748",
            authDomain: "leche-61850.firebaseapp.com",
            projectId: "leche-61850",
            storageBucket: "leche-61850.appspot.com",
            messagingSenderId: "643257813568",
            appId: "1:643257813568:web:b323a5c4c4472f3e37eda5",
            measurementId: "G-C4NJ2NGD52"));
  } else {
    await Firebase.initializeApp();
  }
}
