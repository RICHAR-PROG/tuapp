import 'package:bioallin/presentation/screens_recolectorIn/options.dart';
import 'package:bioallin/presentation/widgets/views_recolectorIn/historialSo.dart';
import 'package:flutter/material.dart';

class HistorialSoScreen extends StatelessWidget {
  const HistorialSoScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Historial de Solicitadores",style: TextStyle(
          fontSize: 20
        ),),
        centerTitle: true ,
      ),
      // ignore: prefer_const_constructors
      body: SingleChildScrollView(
        child:  const CustomPaint(
          // painter: BottomNavCurvePainter(),
          child:historialSolicitadores(),
        ),
      ),
      bottomNavigationBar: const BottomNavBarCurvedFb1(),
      // bottomNavigationBar: const BottomNavBarCurvedFb1(),
    );
  }
}