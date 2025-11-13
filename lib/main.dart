import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:flutter_application_1/screens/splashscreen.dart';
import 'package:flutter_application_1/screens/products.dart';
import 'package:flutter_application_1/screens/home.dart';
import 'package:flutter_application_1/screens/conversaciones_vecinos.dart';
import 'package:flutter_application_1/screens/login.dart';
import 'package:flutter_application_1/theme/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyDrGeP6Y2Lk2YByyacMX5GS6kLbxAtFvYg",
    authDomain: "app1-a0273.firebaseapp.com",
    projectId: "app1-a0273",
    storageBucket: "app1-a0273.firebasestorage.app",
    messagingSenderId: "122655108877",
    appId: "1:122655108877:web:f27788f9c0b9c35a3c8a44",
      ),
    );
  } on FirebaseException catch (e) {
    // Si la app ya estaba inicializada, ignora el error
    if (e.code != 'duplicate-app') rethrow;
  }

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const SplashScreen(),
    );
  }
}

// Esta clase HomeScreen ha sido movida a screens/home.dart
// Se mantiene aquí por compatibilidad si se usa en algún lugar
// Si no se usa, se puede eliminar
