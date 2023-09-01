import 'package:bioallin/presentation/screens/options.dart';
import 'package:bioallin/presentation/widgets/views/info.dart';
import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Informacion",style: TextStyle(
          fontSize: 20
        ),),
        centerTitle: true ,
      ),
      // ignore: prefer_const_constructors
      body: SingleChildScrollView(
        child:  const CustomPaint(
          // painter: BottomNavCurvePainter(),
          child:Informacion(),
        ),
      ),
      bottomNavigationBar: const BottomNavBarCurvedFb1(),
      // bottomNavigationBar: const BottomNavBarCurvedFb1(),
    );
  }
}