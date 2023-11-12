// import 'package:bioallin/presentation/screens/home_screen.dart';
import 'package:bioallin/firebase_options.dart';
import 'package:bioallin/presentation/screens/home_screen.dart';
import 'package:bioallin/presentation/screens_recolectorIn/historialRe_screen.dart';
import 'package:bioallin/presentation/screens_recolectorIn/historialSo_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: Colors.green,
          appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromRGBO(30, 129, 15, 1.0),
            titleTextStyle: TextStyle(color: Color.fromARGB(255, 249, 247, 247)),
          ),
        ),
      home: const HomeScreen());
    //home: HistorialReScreen());
  }
}
