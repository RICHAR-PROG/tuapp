import 'package:bioallin/presentation/screens_recolectorIn/options.dart';
import 'package:bioallin/presentation/widgets/views_recolectorIn/historialRe.dart';
import 'package:flutter/material.dart';

class HistorialReScreen  extends StatelessWidget {
  const HistorialReScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Historial de Recoleccion",style: TextStyle(
          fontSize: 20
        ),),
        centerTitle: true ,
      ),
      // ignore: prefer_const_constructors
      body: SingleChildScrollView(
        child:   CustomPaint(
          // painter: BottomNavCurvePainter(),
          child:CollectorPanel(),
        ),
      ),
      bottomNavigationBar: const BottomNavBarCurvedFb1(),
      // bottomNavigationBar: const BottomNavBarCurvedFb1(),
    );
  }
}