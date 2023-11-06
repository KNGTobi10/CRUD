import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB_EOpxrB3jDY2kIKHLilTQUkeRsVTn1K4",
            authDomain: "newcurd-2699e.firebaseapp.com",
            projectId: "newcurd-2699e",
            storageBucket: "newcurd-2699e.appspot.com",
            messagingSenderId: "183232839864",
            appId: "1:183232839864:web:4818c5a2add5ff13bf344d"));
  } else {
    await Firebase.initializeApp();
  }
}
