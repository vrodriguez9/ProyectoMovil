import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAJP6LdLkB_YmZhqqeqWmWOYBEQTyBWmkg",
            authDomain: "proyectosg-efee2.firebaseapp.com",
            projectId: "proyectosg-efee2",
            storageBucket: "proyectosg-efee2.appspot.com",
            messagingSenderId: "451416412613",
            appId: "1:451416412613:web:0bd60f0313307b0cadfbac",
            measurementId: "G-Y0ED092GB4"));
  } else {
    await Firebase.initializeApp();
  }
}
