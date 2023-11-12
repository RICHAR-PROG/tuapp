import 'package:bioallin/presentation/screens/options.dart';
import 'package:bioallin/presentation/widgets/home/home.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Bienvenido a Bioallin",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            decorationStyle: TextDecorationStyle.double,
            fontFamily: AutofillHints.addressCity,
          ),
        ),
        centerTitle: true,
      ),
      // ignore: prefer_const_constructors
      body: SingleChildScrollView(
        child: const CustomPaint(
          // painter: BottomNavCurvePainter(),
          child: Home(),
        ),
      ),
      bottomNavigationBar: const BottomNavBarCurvedFb1(),
      // bottomNavigationBar: const BottomNavBarCurvedFb1(),
    );
  }
}
