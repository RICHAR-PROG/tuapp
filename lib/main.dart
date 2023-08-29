import 'package:flutter/material.dart';
import 'package:bioallin/presentation/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
          appBarTheme: const AppBarTheme(
           
            backgroundColor: Colors.green,
            titleTextStyle: TextStyle(color: Colors.white),
            
          ),
        ),
        home: const  HomeScreen());
  }
}