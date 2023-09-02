// import 'package:bioallin/presentation/screens/home_screen.dart';
import 'package:bioallin/presentation/screens/map_screen.dart';
import 'package:bioallin/presentation/screens/request_screen.dart';
import 'package:bioallin/presentation/widgets/views/map.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

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
            backgroundColor: Color.fromARGB(255, 85, 212, 89),
            titleTextStyle: TextStyle(color: Colors.white),
          ),
        ),
        home: const MapS());
  }
}
